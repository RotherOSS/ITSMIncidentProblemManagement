// --
// OTOBO is a web-based ticketing system for service organisations.
// --
// Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
// Copyright (C) 2019-2024 Rother OSS GmbH, https://otobo.de/
// --
// This program is free software: you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later version.
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.
// --

"use strict";

var ITSM = ITSM || {};
ITSM.Agent = ITSM.Agent || {};

/**
 * @namespace
 * @exports TargetNS as ITSM.Agent.ITSMIncidentProblemManagement
 * @description
 *      This namespace contains the special module functions for IncidentState.
 */
ITSM.Agent.ITSMIncidentProblemManagement = (function (TargetNS) {

    /**
     * @name ShowIncidentState
     * @memberof ITSM.Agent.ITSMIncidentProblemManagement
     * @function
     * @param {Object} Data - The data needed for the incident state (TicketID, ServiceID)
     * @description
     *      This function shows the IncidentState of service.
     */
    TargetNS.ShowIncidentState = function (Data) {

        // set action and subaction
        Data.Action = 'AgentITSMIncidentProblemManagement';
        Data.Subaction = 'GetServiceIncidentState';

        Core.AJAX.FunctionCall(Core.Config.Get('Baselink'), Data, function (Response) {

            // if a service was selected and an incident state was found
            if (Response.CurInciSignal) {

                // set incident signal
                $('#ServiceIncidentStateSignal').attr('class', Response.CurInciSignal);
                $('#ServiceIncidentStateSignal').attr('title', Response.CurInciState);

                // set incident state
                $('#ServiceIncidentState').html(Response.CurInciState);

                // show service incident signal and state
                $('#ServiceIncidentStateContainer')
                    .show()
                    .prev()
                    .show();
            }
            else {
                // hide service incident signal and state
                $('#ServiceIncidentStateContainer')
                    .hide()
                    .prev()
                    .hide();
            }
        });
    };

    /**
     * @name Init
     * @memberof ITSM.Agent.ITSMIncidentProblemManagement
     * @function
     * @description
     *      This function initializes actions for ITSM Agent IncidentState.
     */
    TargetNS.Init = function() {

        // load template for incident state and signal and attach at to the DOM after the service
        var ServiceIncidentStateHTML = Core.Template.Render('Agent/ITSMIncidentProblemManagement/ServiceIncidentState'),
            ActionShowIncidentState = Core.Config.Get('Action') + 'ShowIncidentState';

        // Show Service Incident State if config is enabled.
        if (Core.Config.Get(ActionShowIncidentState)) {

            // insert template to page
            $(ServiceIncidentStateHTML).insertBefore($('label[for=SLAID]'));

            // update the service incident state and signal when service is changed
            $('#ServiceID').on('change', function () {

                // show service incident state and signal for the selected service
                ITSM.Agent.ITSMIncidentProblemManagement.ShowIncidentState({
                    TicketID: $('input[type=hidden][name=TicketID]').val(),
                    ServiceID: $('#ServiceID').val()
                });
            });

            // show service incident state and signal for the selected service
            //   (this part here is important if the page is reloaded due to e.g. attachment upload
            //   or on first load for AgentTicketActionCommon)
            if ($('#ServiceID').val()) {
                ITSM.Agent.ITSMIncidentProblemManagement.ShowIncidentState({
                    TicketID: $('input[type=hidden][name=TicketID]').val(),
                    ServiceID: $('#ServiceID').val()
                });
            }
        }

        // open some links as pop up
        $('a.AsPopup').on('click', function () {
            Core.UI.Popup.OpenPopup($(this).attr('href'), 'Action');
            return false;
        });
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;
}(ITSM.Agent.ITSMIncidentProblemManagement || {}));
