.. image:: ../images/otobo-logo.png
   :align: center
|

.. toctree::
    :maxdepth: 2
    :caption: Contents

Sacrifice to Sphinx
===================

Description
===========
The OTOBO::ITSM Incident and Problem Management package.

System requirements
===================

Framework
---------
OTOBO 10.1.x

Packages
--------
ITSMCore 10.1.3

Third-party software
--------------------
\-

Usage
=====

Setup
-----

Configuration Reference
-----------------------

Core::Stats
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Stats::DynamicObjectRegistration###ITSMTicketFirstLevelSolutionRate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Enables the stats module to generate statistics about the average of ITSM ticket first level solution rate.

Stats::DynamicObjectRegistration###ITSMTicketSolutionTimeAverage
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Enables the stats module to generate statistics about the average of ITSM ticket solution.

Core::Ticket
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Type
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Allows defining new types for ticket (if ticket type feature is enabled).

Core::Ticket::ACL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

ACLKeysLevel3::Actions###100-Default-ITSM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines which items are available for 'Action' in third level of the ACL structure.

Frontend::Agent::ModuleRegistration
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::Module###AgentTicketAddtlITSMField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentTicketDecision
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Module###AgentITSMIncidentProblemManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Frontend module registration for the agent interface.

Frontend::Agent::ModuleRegistration::Loader
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Loader::Module::AgentTicketDecision###003-ITSMTicket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTicketAddtlITSMField###003-ITSMTicket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTicketClose###002-TicketITSMTicket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTicketFreeText###002-TicketITSMTicket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTicketNote###002-TicketITSMTicket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTicketOwner###002-TicketITSMTicket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTicketPending###002-TicketITSMTicket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTicketPriority###002-TicketITSMTicket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTicketResponsible###002-TicketITSMTicket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTicketPhone###002-TicketITSMTicket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Loader::Module::AgentTicketEmail###002-TicketITSMTicket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Loader module registration for the agent interface.

Frontend::Agent::View::TicketAddtlITSMField
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketAddtlITSMField###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required permissions to use the additional ITSM field screen in the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###RequiredLock
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if a ticket lock is required in the additional ITSM field screen of the agent interface (if the ticket isn't locked yet, the ticket gets locked and the current agent will be set automatically as its owner).

Ticket::Frontend::AgentTicketAddtlITSMField###TicketType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the ticket type in the additional ITSM field screen of the agent interface (Ticket::Type needs to be activated).

Ticket::Frontend::AgentTicketAddtlITSMField###Service
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the service in the additional ITSM field screen of the agent interface (Ticket::Service needs to be activated).

Ticket::Frontend::AgentTicketAddtlITSMField###ServiceMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if service must be selected by the agent.

Ticket::Frontend::AgentTicketAddtlITSMField###SLAMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if SLA must be selected by the agent.

Ticket::Frontend::AgentTicketAddtlITSMField###Queue
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the queue in the ticket responsible screen of a zoomed ticket in the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###QueueMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if queue must be selected by the agent.

Ticket::Frontend::AgentTicketAddtlITSMField###Owner
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the ticket owner in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###OwnerMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if ticket owner must be selected by the agent.

Ticket::Frontend::AgentTicketAddtlITSMField###Responsible
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the ticket responsible in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###ResponsibleMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if ticket responsible must be selected by the agent.

Ticket::Frontend::AgentTicketAddtlITSMField###State
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
If a note is added by an agent, sets the state of a ticket in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###StateMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if state must be selected by the agent.

Ticket::Frontend::AgentTicketAddtlITSMField###StateType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the next state of a ticket after adding a note, in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###StateDefault
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default next state of a ticket after adding a note, in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###Note
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Allows adding notes in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###NoteMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if note must be filled in by the agent. Can be overwritten by Ticket::Frontend::NeedAccountedTime.

Ticket::Frontend::AgentTicketAddtlITSMField###Subject
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default subject of a note in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###Body
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default body of a note in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###InvolvedAgent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a list of all the involved agents on this ticket, in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###InformAgent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###IsVisibleForCustomerDefault
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the note in the ticket note screen of the agent interface is visible for the customer by default.

Ticket::Frontend::AgentTicketAddtlITSMField###Priority
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows the ticket priority options in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###PriorityDefault
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default ticket priority in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###Title
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows the title fields in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###FormDraft
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Allows to save current work as draft in the ticket note screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###HistoryType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the history type for the additional ITSM field screen action, which gets used for ticket history.

Ticket::Frontend::AgentTicketAddtlITSMField###HistoryComment
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the history comment for the additional ITSM field screen action, which gets used for ticket history.

Ticket::Frontend::AgentTicketAddtlITSMField###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the additional ITSM field screen of the agent interface.

Ticket::Frontend::AgentTicketAddtlITSMField###ShowIncidentState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the service incident state should be shown during service selection in the agent interface.

Frontend::Agent::View::TicketClose
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketClose###ShowIncidentState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the service incident state should be shown during service selection in the agent interface.

Ticket::Frontend::AgentTicketClose###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the ticket close screen of the agent interface.

Frontend::Agent::View::TicketCompose
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketCompose###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the ticket compose screen of the agent interface.

Frontend::Agent::View::TicketDecision
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketDecision###Permission
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Required permissions to use the decision screen in the agent interface.

Ticket::Frontend::AgentTicketDecision###RequiredLock
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if a ticket lock is required in the decision screen of the agent interface (if the ticket isn't locked yet, the ticket gets locked and the current agent will be set automatically as its owner).

Ticket::Frontend::AgentTicketDecision###TicketType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the ticket type in the decision screen of the agent interface (Ticket::Type needs to be activated).

Ticket::Frontend::AgentTicketDecision###Service
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the service in the decision screen of the agent interface (Ticket::Service needs to be activated).

Ticket::Frontend::AgentTicketDecision###ServiceMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if service must be selected by the agent.

Ticket::Frontend::AgentTicketDecision###SLAMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if SLA must be selected by the agent.

Ticket::Frontend::AgentTicketDecision###Queue
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the queue in the ticket note screen of a zoomed ticket in the agent interface.

Ticket::Frontend::AgentTicketDecision###QueueMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if queue must be selected by the agent.

Ticket::Frontend::AgentTicketDecision###Owner
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the ticket owner in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###OwnerMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if ticket owner must be selected by the agent.

Ticket::Frontend::AgentTicketDecision###Responsible
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the ticket responsible in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###ResponsibleMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if ticket responsible must be selected by the agent.

Ticket::Frontend::AgentTicketDecision###State
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
If a note is added by an agent, sets the state of a ticket in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###StateMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if state must be selected by the agent.

Ticket::Frontend::AgentTicketDecision###StateType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the next state of a ticket after adding a note, in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###StateDefault
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default next state of a ticket after adding a note, in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###Note
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Allows adding notes in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###NoteMandatory
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets if note must be filled in by the agent. Can be overwritten by Ticket::Frontend::NeedAccountedTime.

Ticket::Frontend::AgentTicketDecision###Subject
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default subject of a note in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###Body
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default body of a note in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###InvolvedAgent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a list of all the involved agents on this ticket, in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###InformAgent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###IsVisibleForCustomerDefault
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the note in the ticket note screen of the agent interface is visible for the customer by default.

Ticket::Frontend::AgentTicketDecision###Priority
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows the ticket priority options in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###PriorityDefault
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the default ticket priority in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###Title
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows the title fields in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###FormDraft
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Allows to save current work as draft in the ticket note screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###HistoryType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the history type for the decision screen action, which gets used for ticket history.

Ticket::Frontend::AgentTicketDecision###HistoryComment
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines the history comment for the decision screen action, which gets used for ticket history.

Ticket::Frontend::AgentTicketDecision###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the decision screen of the agent interface.

Ticket::Frontend::AgentTicketDecision###ShowIncidentState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the service incident state should be shown during service selection in the agent interface.

Frontend::Agent::View::TicketEmailNew
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketEmail###ShowIncidentState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the service incident state should be shown during service selection in the agent interface.

Ticket::Frontend::AgentTicketEmail###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the ticket email screen of the agent interface.

Frontend::Agent::View::TicketFreeText
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketFreeText###ShowIncidentState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the service incident state should be shown during service selection in the agent interface.

Frontend::Agent::View::TicketNote
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketNote###ShowIncidentState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the service incident state should be shown during service selection in the agent interface.

Frontend::Agent::View::TicketOwner
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketOwner###ShowIncidentState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the service incident state should be shown during service selection in the agent interface.

Frontend::Agent::View::TicketPending
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketPending###ShowIncidentState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the service incident state should be shown during service selection in the agent interface.

Frontend::Agent::View::TicketPhoneNew
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketPhone###ShowIncidentState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the service incident state should be shown during service selection in the agent interface.

Ticket::Frontend::AgentTicketPhone###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the ticket phone screen of the agent interface.

Frontend::Agent::View::TicketPrint
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketPrint###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the ticket print screen of the agent interface.

Frontend::Agent::View::TicketPriority
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketPriority###ShowIncidentState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the service incident state should be shown during service selection in the agent interface.

Ticket::Frontend::AgentTicketPriority###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the ticket priority screen of the agent interface.

Ticket::Frontend::AgentTicketPriority###TicketType
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the ticket type in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).

Ticket::Frontend::AgentTicketPriority###Service
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Sets the service in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).

Frontend::Agent::View::TicketResponsible
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketResponsible###ShowIncidentState
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Defines if the service incident state should be shown during service selection in the agent interface.

Frontend::Agent::View::TicketSearch
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketSearch###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the ticket search screen of the agent interface.

Frontend::Agent::View::TicketZoom
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::AgentTicketZoom###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the ticket zoom screen of the agent interface.

Frontend::Agent::View::TicketZoom::MenuModule
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::MenuModule###420-Decision
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to change the decision of a ticket in its zoom view of the agent interface.

Ticket::Frontend::MenuModule###315-AddtlITSMField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Shows a link in the menu to modify additional ITSM fields in the ticket zoom view of the agent interface.

Frontend::Base::OutputFilter
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Frontend::Output::FilterElementPost###ITSMIncidentProblemManagement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Modifies the display order of the dynamic field ITSMImpact and other things.

Frontend::Customer::View::TicketPrint
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::CustomerTicketPrint###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the ticket print screen of the customer interface.

Frontend::Customer::View::TicketZoom
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Ticket::Frontend::CustomerTicketZoom###DynamicField
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Dynamic fields shown in the ticket zoom screen of the customer interface.

About
=======

Contact
-------
| Rother OSS GmbH
| Email: hello@otobo.de
| Web: https://otobo.de

Version
-------
Author: |doc-vendor| / Version: |doc-version| / Date of release: |doc-datestamp|
