# --
# OTOBO is a web-based ticketing system for service organisations.
# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# Copyright (C) 2019-2024 Rother OSS GmbH, https://otobo.io/
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

package Kernel::Language::es_ITSMIncidentProblemManagement;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AgentTicketOverviewMedium
    $Self->{Translation}->{'Criticality'} = 'Criticidad';
    $Self->{Translation}->{'Impact'} = 'Impacto';

    # JS Template: ServiceIncidentState
    $Self->{Translation}->{'Service Incident State'} = 'Estado de Incidente del Servicio';

    # Perl Module: Kernel/Output/HTML/FilterElementPost/ITSMIncidentProblemManagement.pm
    $Self->{Translation}->{'Link ticket'} = 'Vincular ticket';
    $Self->{Translation}->{'Change Decision of %s%s%s'} = 'Cambiar decisión de %s%s%s';
    $Self->{Translation}->{'Change ITSM fields of %s%s%s'} = 'Cambiar los campos de ITSM de %s%s%s';

    # Perl Module: var/packagesetup/ITSMIncidentProblemManagement.pm
    $Self->{Translation}->{'Review Required'} = 'Revisión Requerida';
    $Self->{Translation}->{'Decision Result'} = 'Resultado de Decisión';
    $Self->{Translation}->{'Approved'} = 'Aprobado';
    $Self->{Translation}->{'Postponed'} = 'Pospuesto';
    $Self->{Translation}->{'Pre-approved'} = 'Pre-aprobado';
    $Self->{Translation}->{'Rejected'} = 'Rechazado';
    $Self->{Translation}->{'Repair Start Time'} = 'Fecha Inicial de Reparación';
    $Self->{Translation}->{'Recovery Start Time'} = 'Fecha Inicial de Recuperación';
    $Self->{Translation}->{'Decision Date'} = 'Fecha de Decisión';
    $Self->{Translation}->{'Due Date'} = 'Fecha de vencimiento';

    # Database XML / SOPM Definition: ITSMIncidentProblemManagement.sopm
    $Self->{Translation}->{'closed with workaround'} = 'Cerrado con solución provisional';

    # SysConfig
    $Self->{Translation}->{'Add a decision!'} = '¡Agregue una decisión!';
    $Self->{Translation}->{'Additional ITSM Fields'} = 'Campos ITSM Adicionales';
    $Self->{Translation}->{'Additional ITSM ticket fields.'} = 'Campos adicionales del ticket en ITSM.';
    $Self->{Translation}->{'Allows adding notes in the additional ITSM field screen of the agent interface.'} =
        'Permite agregar notas en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Self->{Translation}->{'Allows adding notes in the decision screen of the agent interface.'} =
        'Permite agregar notas en la ventana de decisión de la interfaz del agente.';
    $Self->{Translation}->{'Allows defining new types for ticket (if ticket type feature is enabled).'} =
        'Permite definir nuevos tipos para ticket (si la función tipo de ticket está habilitada).';
    $Self->{Translation}->{'Change the ITSM fields!'} = 'Modificar los campos ITSM';
    $Self->{Translation}->{'Decision'} = 'Decisión';
    $Self->{Translation}->{'Defines if a ticket lock is required in the additional ITSM field screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).'} =
        'Determina si es necesario que el ticket esté bloqueado para acceder a la ventana de campos ITSM adicionales de la interfaz del agente (si el ticket no está bloqueado aún, se bloquea y el agente actual se convertirá automáticamente en su propietario).';
    $Self->{Translation}->{'Defines if a ticket lock is required in the decision screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).'} =
        'Determina si es necesario que el ticket esté bloqueado para acceder a la ventana de decisión de la interfaz del agente (si el ticket no está bloqueado aún, se bloquea y el agente actual se convertirá automáticamente en su propietario).';
    $Self->{Translation}->{'Defines if the service incident state should be shown during service selection in the agent interface.'} =
        'Define si el estado de la incidencia en el servicio debe ser mostrado durante la selección del servicio en la interfaz del agente.';
    $Self->{Translation}->{'Defines the default body of a note in the additional ITSM field screen of the agent interface.'} =
        'Define el texto por default de una nota, en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Self->{Translation}->{'Defines the default body of a note in the decision screen of the agent interface.'} =
        'Define el texto por default de una nota, en la ventana de decisión de la interfaz del agente.';
    $Self->{Translation}->{'Defines the default frontend (HTML) theme to be used by the agents and customers. If you like, you can add your own theme. Please refer the administrator manual located at https://doc.otobo.org/.'} =
        '';
    $Self->{Translation}->{'Defines the default frontend language. All the possible values are determined by the available language files on the system. These values are listed as the keys in the setting \'DefaultUsedLanguages\'.'} =
        '';
    $Self->{Translation}->{'Defines the default next state of a ticket after adding a note, in the additional ITSM field screen of the agent interface.'} =
        'Define el siguiente estado de un ticket por default, luego de agregar una nota en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Self->{Translation}->{'Defines the default next state of a ticket after adding a note, in the decision screen of the agent interface.'} =
        'Define el siguiente estado de un ticket por default, luego de agregar una nota en la ventana de decisión de la interfaz del agente.';
    $Self->{Translation}->{'Defines the default subject of a note in the additional ITSM field screen of the agent interface.'} =
        'Define el asunto por default de una nota, en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Self->{Translation}->{'Defines the default subject of a note in the decision screen of the agent interface.'} =
        'Define el asunto por default de una nota, en la ventana de decisión de la interfaz del agente.';
    $Self->{Translation}->{'Defines the default ticket priority in the additional ITSM field screen of the agent interface.'} =
        'Define la prioridad default del ticket en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Self->{Translation}->{'Defines the default ticket priority in the decision screen of the agent interface.'} =
        'Define la prioridad default del ticket en la ventana de decisión de la interfaz del agente.';
    $Self->{Translation}->{'Defines the history comment for the additional ITSM field screen action, which gets used for ticket history.'} =
        'Define el comentario del historial para la acción de la ventana de campos ITSM adicionales, misma que es usada por el historial del ticket.';
    $Self->{Translation}->{'Defines the history comment for the decision screen action, which gets used for ticket history.'} =
        'Define el comentario del historial, para la acción de la ventana de decisión, misma que es usada por el historial del ticket.';
    $Self->{Translation}->{'Defines the history type for the additional ITSM field screen action, which gets used for ticket history.'} =
        'Define el tipo de historial para la acción de la ventana de campos ITSM adicionales, misma que es usada por el historial del ticket.';
    $Self->{Translation}->{'Defines the history type for the decision screen action, which gets used for ticket history.'} =
        'Define el tipo de historial, para la acción de la ventana de decisión, misma que es usada por el historial del ticket.';
    $Self->{Translation}->{'Defines the next state of a ticket after adding a note, in the additional ITSM field screen of the agent interface.'} =
        'Define el siguiente estado de un ticket, luego de agregar una nota en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Self->{Translation}->{'Defines the next state of a ticket after adding a note, in the decision screen of the agent interface.'} =
        'Define el siguiente estado de un ticket, luego de agregar una nota en la ventana de decisión de la interfaz del agente.';
    $Self->{Translation}->{'Defines the parameters for the dashboard backend. "Cmd" is used to specify command with parameters. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin. "Mandatory" determines if the plugin is always shown and can not be removed by agents. Only works if DashboardBackend::AllowCmdOutput is enabled in Config.pm.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the additional ITSM field screen of the agent interface.'} =
        'Campos dinámicos que se muestran en la pantalla de campo ITSM adicional de la interfaz de agente.';
    $Self->{Translation}->{'Dynamic fields shown in the decision screen of the agent interface.'} =
        'Campos dinámicos que se muestran en la pantalla de decisión de la interfaz de agente. ';
    $Self->{Translation}->{'Dynamic fields shown in the ticket zoom screen of the agent interface.'} =
        'Campos dinámicos que se muestran en la pantalla de zoom del ticket de la interfaz de agente.';
    $Self->{Translation}->{'Enables the stats module to generate statistics about the average of ITSM ticket first level solution rate.'} =
        'Habilita, en el módulo de estadísticas, la generación de estadísticas acerca del tasa promedio de solución de primer nivel de tickets ITSM.';
    $Self->{Translation}->{'Enables the stats module to generate statistics about the average of ITSM ticket solution.'} =
        'Habilita, en el módulo de estadísticas, la generación de estadísticas acerca del promedio de solución de tickets ITSM.';
    $Self->{Translation}->{'If "LDAP" was selected for Customer::AuthModule and you wish to use TLS security to communicate with the LDAP server, the "verify" parameter can be specified here. See Net::LDAP::start_tls for more information about the parameter.'} =
        '';
    $Self->{Translation}->{'If a note is added by an agent, sets the state of a ticket in the additional ITSM field screen of the agent interface.'} =
        'Si una nota es agregada por un agente, define el estado de un ticket en la ventana de campos ITSM adicionales, en la interfaz del agente.';
    $Self->{Translation}->{'If a note is added by an agent, sets the state of a ticket in the decision screen of the agent interface.'} =
        'Si una nota es agregada por un agente, define el estado de un ticket en la ventana de decisión, en la interfaz del agente.';
    $Self->{Translation}->{'Ignores not ticket related attributes.'} = '';
    $Self->{Translation}->{'Modifies the display order of the dynamic field ITSMImpact and other things.'} =
        'Modifica el orden de visualización del campo dinámico ITSMImpact y otras cosas.';
    $Self->{Translation}->{'Module to dynamically show the service incident state and to calculate the priority.'} =
        'Módulo para mostrar dinámicamente el estado del incidente del servicio y calcular la prioridad.';
    $Self->{Translation}->{'Required permissions to use the additional ITSM field screen in the agent interface.'} =
        'Permisos necesarios para usar la ventana de campos ITSM adicionales, en la interfaz del agente.';
    $Self->{Translation}->{'Required permissions to use the decision screen in the agent interface.'} =
        'Permisos necesarios para usar la ventana de decisión, en la interfaz del agente.';
    $Self->{Translation}->{'Service Incident State and Priority Calculation'} = 'Estado del incidente del servicio y cálculo de prioridad.';
    $Self->{Translation}->{'Sets the service in the additional ITSM field screen of the agent interface (Ticket::Service needs to be activated).'} =
        'Permite definir el servicio en la ventana de campos ITSM adicionales en la interfaz del agente (Ticket::Service tiene que estar habilitado).';
    $Self->{Translation}->{'Sets the service in the decision screen of the agent interface (Ticket::Service needs to be activated).'} =
        'Permite definir el servicio en la ventana de decisión en la interfaz del agente (Ticket::Service tiene que estar habilitado).';
    $Self->{Translation}->{'Sets the service in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).'} =
        'Estable el servicio en la pantalla de prioridad de ticket de un ticket ampliado en la interfaz de agente (Ticket::Service necesita estar activado).';
    $Self->{Translation}->{'Sets the ticket owner in the additional ITSM field screen of the agent interface.'} =
        'Permite definir el propietario del ticket en la ventana de campos ITSM adicionales, en la interfaz del agente.';
    $Self->{Translation}->{'Sets the ticket owner in the decision screen of the agent interface.'} =
        'Permite definir el propietario del ticket en la ventana de decisión, en la interfaz del agente.';
    $Self->{Translation}->{'Sets the ticket responsible in the additional ITSM field screen of the agent interface.'} =
        'Permite definir el responsable del ticket en la ventana de campos ITSM adicionales, en la interfaz del agente.';
    $Self->{Translation}->{'Sets the ticket responsible in the decision screen of the agent interface.'} =
        'Permite definir el responsable del ticket en la ventana de decisión, en la interfaz del agente.';
    $Self->{Translation}->{'Sets the ticket type in the additional ITSM field screen of the agent interface (Ticket::Type needs to be activated).'} =
        'Permite definir el tipo de ticket en la ventana de campos ITSM adicionales en la interfaz del agente (Ticket::Type tiene que estar habilitado).';
    $Self->{Translation}->{'Sets the ticket type in the decision screen of the agent interface (Ticket::Type needs to be activated).'} =
        'Permite definir el tipo de ticket en la ventana de decisión en la interfaz del agente (Ticket::Type tiene que estar habilitado).';
    $Self->{Translation}->{'Sets the ticket type in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).'} =
        'Establece el tipo de ticket en la pantalla de prioridad de ticket de un ticket ampliado en la interfaz de agente (Ticket::Type debe estar activado).';
    $Self->{Translation}->{'Shows a link in the menu to change the decision of a ticket in its zoom view of the agent interface.'} =
        'Muesta un vínculo en el menú para modificar la decisión de un ticket, en el detalle de dicho ticket, en la interfaz del agente.';
    $Self->{Translation}->{'Shows a link in the menu to modify additional ITSM fields in the ticket zoom view of the agent interface.'} =
        'Muesta un vínculo en el menú para modificar campos ITSM adicionales, en el detalle del ticket correspondiente, en la interfaz del agente.';
    $Self->{Translation}->{'Shows a list of all the involved agents on this ticket, in the additional ITSM field screen of the agent interface.'} =
        'Muesta una lista de todos los agentes involucrados en este ticket, en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Self->{Translation}->{'Shows a list of all the involved agents on this ticket, in the decision screen of the agent interface.'} =
        'Muesta una lista de todos los agentes involucrados en este ticket, en la ventana de decisión de la interfaz del agente.';
    $Self->{Translation}->{'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the additional ITSM field screen of the agent interface.'} =
        'Muestra una lista de todos los agentes posibles (aquellos con permisos para agregar notas en la fila o ticket), para determinar quién/quiénes deben ser informados acerca de ésta nota, en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Self->{Translation}->{'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the decision screen of the agent interface.'} =
        'Muestra una lista de todos los agentes posibles (aquellos con permisos para agregar notas en la fila o ticket), para determinar quién/quiénes deben ser informados acerca de ésta nota, en la ventana de decisión de la interfaz del agente.';
    $Self->{Translation}->{'Shows the ticket priority options in the additional ITSM field screen of the agent interface.'} =
        'Muestra las opciones de prioridad del ticket en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Self->{Translation}->{'Shows the ticket priority options in the decision screen of the agent interface.'} =
        'Muestra las opciones de prioridad del ticket en la ventana de decisión de la interfaz del agente.';
    $Self->{Translation}->{'Shows the title fields in the additional ITSM field screen of the agent interface.'} =
        'Muestra los campos del título en la ventana de campos ITSM adicionales de la interfaz del agente.';
    $Self->{Translation}->{'Shows the title fields in the decision screen of the agent interface.'} =
        'Muestra los campos del título en la ventana de decisión de la interfaz del agente.';
    $Self->{Translation}->{'Ticket decision.'} = 'Decisión del Ticket.';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Service Incident State',
    );

}

1;
