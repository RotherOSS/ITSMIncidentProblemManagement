# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2020 Rother OSS GmbH, https://otobo.de/
# --
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
# --

use strict;
use warnings;
use utf8;

use vars (qw($Self));

my $Selenium = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {

        my $TicketObject = $Kernel::OM->Get('Kernel::System::Ticket');

        # Create test user.
        my $TestUserLogin = $Kernel::OM->Get('Kernel::System::UnitTest::Helper')->TestUserCreate(
            Groups => [ 'admin', 'itsm-service' ],
        ) || die "Did not get test user";

        # Get test user ID.
        my $TestUserID = $Kernel::OM->Get('Kernel::System::User')->UserLookup(
            UserLogin => $TestUserLogin,
        );

        # Create test ticket.
        my $TicketID = $TicketObject->TicketCreate(
            Title        => "Selenium Test Ticket",
            Queue        => 'Raw',
            Lock         => 'unlock',
            Priority     => '3 normal',
            State        => 'new',
            CustomerID   => 'SeleniumCustomer',
            CustomerUser => "SeleniumCustomer\@localhost.com",
            OwnerID      => $TestUserID,
            UserID       => $TestUserID,
        );
        $Self->True(
            $TicketID,
            "TicketID $TicketID is created",
        );

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        my $ScriptAlias = $Kernel::OM->Get('Kernel::Config')->Get('ScriptAlias');

        # Navigate to AgentTicketDecision screen.
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AgentTicketDecision;TicketID=$TicketID");

        # Check screen.
        for my $ID (
            qw( Result DateUsed DateMonth DateDay DateYear DateHour DateMinute )
            )
        {
            $Selenium->WaitFor(
                JavaScript => "return typeof(\$) === 'function' && \$('#DynamicField_ITSMDecision$ID').length;"
            );
            my $Element = $Selenium->find_element( "#DynamicField_ITSMDecision$ID", 'css' );
            $Element->is_enabled();
            $Element->is_displayed();
        }

        # Change decision result and date.
        $Selenium->execute_script(
            "\$('#DynamicField_ITSMDecisionResult').val('Rejected').trigger('redraw.InputField').trigger('change');"
        );
        $Selenium->find_element( "#DynamicField_ITSMDecisionDateUsed", 'css' )->click();
        $Selenium->WaitFor( JavaScript => 'return $("#DynamicField_ITSMDecisionDateUsed").prop("checked") === true;' );
        $Selenium->find_element("//button[\@type='submit']")->VerifiedClick();

        # Navigate to AgentTicketHistory screen.
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AgentTicketHistory;TicketID=$TicketID");

        # Wait until page has loaded, if necessary.
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $(".CancelClosePopup").length;' );

        # Check for decision TicketDynamicFieldUpdates.
        for my $UpdateText (qw(Result Date)) {
            $Self->True(
                index( $Selenium->get_page_source(), "Changed dynamic field ITSMDecision$UpdateText" ) > -1,
                "DynamicFieldUpdate decision $UpdateText - found",
            ) || die;
        }

        # Delete test tickets.
        my $Success = $TicketObject->TicketDelete(
            TicketID => $TicketID,
            UserID   => $TestUserID,
        );

        # Ticket deletion could fail if apache still writes to ticket history. Try again in this case.
        if ( !$Success ) {
            sleep 3;
            $Success = $TicketObject->TicketDelete(
                TicketID => $TicketID,
                UserID   => $TestUserID,
            );
        }
        $Self->True(
            $Success,
            "TicketID $TicketID is deleted"
        );

        # Make sure the cache is correct.
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp(
            Type => 'Ticket',
        );
    }
);

1;
