<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:datatypes="http://studio.genesyslab.com/common/datatypes/" xmlns:datatypes_1="http://studio.genesyslab.com/ird/datatypes" xmlns:ird="http://studio.genesyslab.com/ird/" xmlns:notation="http://www.eclipse.org/gmf/runtime/1.0.2/notation" xsi:schemaLocation="http://studio.genesyslab.com/common/datatypes/ http://studio.genesyslab.com/common/#//datatypes http://studio.genesyslab.com/ird/datatypes http://studio.genesyslab.com/ird/#//datatypes">
  <ird:StrategyDiagram xmi:id="_IYJMoIhVEeCVetbDxMcYIg" name="default" designedUsing="Composer 8.1.300.33">
    <blocks xmi:type="ird:ExitBlock" xmi:id="_N0FQ8YhVEeCVetbDxMcYIg" name="Exit" terminating="true" category="Exit"/>
    <blocks xmi:type="ird:PlayApplicationBlock" xmi:id="_N0FQ8ohVEeCVetbDxMcYIg" name="WelcomePrompt" category="Play Application" resource="/Callflows/WelcomeCaller.callflow" type="ProjectFile" timeout="5" useUserData="true">
      <parameters xmi:type="datatypes:Parameter" xmi:id="_2iQyIMkuEeKbrba3Jy8G-A" name="firstname" value="customerdata[0].FirstName" description="Enter Description"/>
      <parameters xmi:type="datatypes:Parameter" xmi:id="_2iQyIckuEeKbrba3Jy8G-A" name="language" value="language" description="Enter Description" type="output"/>
      <parameters xmi:type="datatypes:Parameter" xmi:id="_2iQyIskuEeKbrba3Jy8G-A" name="lastname" value="customerdata[0].LastName" description="Enter Description"/>
    </blocks>
    <blocks xmi:type="ird:TargetBlock" xmi:id="_N0FQ84hVEeCVetbDxMcYIg" name="Target" category="Target" statisticsOrder="Max" timeout="5" priority="" useAccessCode="false" useTreatments="true">
      <conditionalExceptions xmi:type="datatypes:TransitionCommonItem" xmi:id="_KMXn8GPnEeKKD7hgm-qxmg" name="error.queue.submit" event="error.queue.submit" condition="_event.data.requestid==App_{block}['requestid']"/>
      <statistic xmi:type="datatypes:MultiSourceProperty" xmi:id="_idrLcK0-EeCpI4KtIjPPpQ" value="StatAgentsAvailable" Source="Configuration Server"/>
      <targets xmi:type="datatypes_1:TargetItem" xmi:id="_F1SKgK1FEeCpI4KtIjPPpQ" name="Target" targetType="Variable" statServer="Stat_Server" threshold=""/>
      <from xmi:type="datatypes_1:ForceRouteItem" xmi:id="_T8V8cMktEeKbrba3Jy8G-A" value="system.DNIS" Source="Variable"/>
    </blocks>
    <blocks xmi:type="ird:CreateEmailBlock" xmi:id="_N0FQ9ohVEeCVetbDxMcYIg" name="Acknowledge" category="Create Email" subject="Acknowledgement">
      <emailServer xmi:type="datatypes:MultiSourceProperty" xmi:id="_N0FQ94hVEeCVetbDxMcYIg" value="E-MailServer" Source="Configuration Server"/>
      <from xmi:type="datatypes:MultiSourceProperty" xmi:id="_UoTZgJHTEeCRpKhroUDzIA" value="Customer support" Source="Configuration Server"/>
      <to xmi:type="datatypes:MultiSourceProperty" xmi:id="_N0FQ-YhVEeCVetbDxMcYIg" value="customeremail" Source="Variable"/>
      <standardResponse xmi:type="datatypes_1:SRLMultiSourceProperty" xmi:id="_Nn0CAJHCEeCRpKhroUDzIA" name="Customer support phone" value="00037a5XK7KM003P" Source="Configuration Server"/>
    </blocks>
    <blocks xmi:type="ird:IdentifyCustomerBlock" xmi:id="_N0FQ-4hVEeCVetbDxMcYIg" name="IdentifyCustomer" category="Identify Customer" customerData="Variable(customerdata)">
      <variablesMapping xmi:type="datatypes:Property" xmi:id="_N0FQ_IhVEeCVetbDxMcYIg" name="customeremail" value="EmailAddress"/>
      <customerAttributes xmi:type="datatypes:CustomerIdentificationAttributeItem" xmi:id="_N0FQ_YhVEeCVetbDxMcYIg" extension="" attribute="PhoneNumber">
        <value xmi:type="datatypes:MultiSourceProperty" xmi:id="_N0FQ_ohVEeCVetbDxMcYIg" value="system.ANI" Source="Variable"/>
      </customerAttributes>
      <getAttributes xmi:type="datatypes:MultiSourceProperty" xmi:id="_N0FQ_4hVEeCVetbDxMcYIg" value="Yes"/>
    </blocks>
    <blocks xmi:type="ird:EntryBlock" xmi:id="_MEfMcIheEeCbvtYNMEKM_w" name="Entry" starting="true" category="Entry">
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a78MkuEeKbrba3Jy8G-A" name="system.Language" value="'en-US'" description="Application Language" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a78ckuEeKbrba3Jy8G-A" name="system.CallID" value="_genesys.ixn.interactions[system.InteractionID].voice.callid" description="callid created by the switch." type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a78skuEeKbrba3Jy8G-A" name="system.DNIS" value="_genesys.ixn.interactions[system.InteractionID].voice.dnis" description="DNIS associated with Called phone number" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a788kuEeKbrba3Jy8G-A" name="system.ANI" value="_genesys.ixn.interactions[system.InteractionID].voice.ani" description="ANI associated with the calling party." type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a79MkuEeKbrba3Jy8G-A" name="system.LastErrorEventName" value="'undefined'" description="Last error" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a79ckuEeKbrba3Jy8G-A" name="system.LastErrorDescription" value="'undefined'" description="Last error description" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a79skuEeKbrba3Jy8G-A" name="system.WebServiceStubbing" value="'0'" description="Flag to control WebServices Stubbing. '1' - ON" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a798kuEeKbrba3Jy8G-A" name="system.TerminateIxnOnExit" value="1" description="Flag to control if Exit block should terminate multimedia interactions. '1' - ON" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a7-MkuEeKbrba3Jy8G-A" name="system.InteractionID" value="_event.data.interactionid" description="The current interaction ID." type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a7-ckuEeKbrba3Jy8G-A" name="system.TenantID" value="parseInt(_genesys.ixn.interactions[system.InteractionID].tenantid)" description="The current Tenant ID." type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a7-skuEeKbrba3Jy8G-A" name="system.TenantName" value="_genesys.session.tenant" description="The current Tenant name." type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a7-8kuEeKbrba3Jy8G-A" name="system.LastTargetComponentSelected" value="'undefined'" description="Target to which the Interaction was routed definitively." type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a7_MkuEeKbrba3Jy8G-A" name="system.LastTargetObjectSelected" value="'undefined'" description="High-level Target to which the Interaction was routed definitively" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a7_ckuEeKbrba3Jy8G-A" name="system.LastTargetSelected" value="'undefined'" description="DN and the Switch name of the Target to which the Interaction was routed definitively" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a7_skuEeKbrba3Jy8G-A" name="system.LastVirtualQueueSelected" value="'undefined'" description="The Alias of the Virtual Queue specified in the target list to which the target where the interaction was routed belongs" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a7_8kuEeKbrba3Jy8G-A" name="system.LastSubmitRequestId" value="'undefined'" description="Requestid  value of the Last queue:submit execution" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8AMkuEeKbrba3Jy8G-A" name="system.StartEvent" value="undefined" description="The content of the specified start event" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8AckuEeKbrba3Jy8G-A" name="system.BaseURL" value="getBaseURL()" description="Base URL" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8AskuEeKbrba3Jy8G-A" name="system.RelativePathURL" value="getRelativePathURL()" description="Relative path" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8A8kuEeKbrba3Jy8G-A" name="system.LastErrorEvent" value="'undefined'" description="Last error" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8BMkuEeKbrba3Jy8G-A" name="system.OPM" value="getOPMParameters()" description="Operational Parameters Data Variable" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8BckuEeKbrba3Jy8G-A" name="system.OCS_RecordURI" value="getWorkflowRecordURI()" description="OCS Record URI" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8BskuEeKbrba3Jy8G-A" name="system.OCS_URI" value="getWorkflowOCSURI()" description="OCS URI" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8B8kuEeKbrba3Jy8G-A" name="system.OCS_Record" value="getWorkflowOCSRecord()" description="OCS Record" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8CMkuEeKbrba3Jy8G-A" name="system.ThisDN" value="_genesys.ixn.interactions[system.InteractionID].voice.dnis" description="ThisDN attribute of last point of presence for this call" type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8CckuEeKbrba3Jy8G-A" name="system.ParentInteractionID" value="_genesys.ixn.interactions[system.InteractionID].parentid" description="The current interaction parent ID." type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8CskuEeKbrba3Jy8G-A" name="system.OriginatingSession" value="undefined" description="The originating session context." type="System"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8a8C8kuEeKbrba3Jy8G-A" name="customerdata" value="'Enter Value'" description="Enter Description" type="User"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8bjAMkuEeKbrba3Jy8G-A" name="customeremail" value="'Enter Value'" description="Enter Description" type="User"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8bjAckuEeKbrba3Jy8G-A" name="Target" value="'Enter Value'" description="Enter Description" type="User"/>
      <variables xmi:type="datatypes:Variable" xmi:id="_b8bjAskuEeKbrba3Jy8G-A" name="language" value="'Enter Value'" description="Enter Description" type="User"/>
    </blocks>
    <blocks xmi:type="ird:PlayMessageBlock" xmi:id="_n3aUcJwgEeCQdrU3AEaRrw" name="PlayMessage" category="Play Message" typeOfPrompts="Announcement">
      <prompts xmi:type="datatypes_1:PlayMessageItem" xmi:id="_z4adsLFUEeCI0-meeCIfpw" value="_genesys.statistic.sData(Target, 'ExpectedWaitTime')" type="Text"/>
    </blocks>
    <blocks xmi:type="ird:AssignBlock" xmi:id="_o7q64K1EEeCpI4KtIjPPpQ" name="SetTarget" category="Assign">
      <assignData xmi:type="datatypes:KeyValuePairItem" xmi:id="_ov8RwMkuEeKbrba3Jy8G-A" Key="Target" Value="'?:' + language + '> 9@.GA'"/>
    </blocks>
    <blocks xmi:type="ird:PlayApplicationBlock" xmi:id="_yVQ1kK1GEeCpI4KtIjPPpQ" name="PlayNoAgent" category="Play Application" resource="/Callflows/NoAgent.callflow" type="ProjectFile"/>
    <blocks xmi:type="ird:DisconnectBlock" xmi:id="__3xYUK1GEeCpI4KtIjPPpQ" name="Disconnect" terminating="true" category="Disconnect"/>
    <links xmi:type="ird:WorkflowOutputLink" xmi:id="_sopxUIhVEeCVetbDxMcYIg" fromBlock="_N0FQ84hVEeCVetbDxMcYIg" toBlock="_N0FQ9ohVEeCVetbDxMcYIg"/>
    <links xmi:type="ird:WorkflowOutputLink" xmi:id="_ucfyEJwgEeCQdrU3AEaRrw" fromBlock="_N0FQ9ohVEeCVetbDxMcYIg" toBlock="_N0FQ8YhVEeCVetbDxMcYIg"/>
    <links xmi:type="ird:WorkflowOutputLink" xmi:id="_vLu2oJwgEeCQdrU3AEaRrw" fromBlock="_n3aUcJwgEeCQdrU3AEaRrw" toBlock="_N0FQ84hVEeCVetbDxMcYIg"/>
    <links xmi:type="ird:WorkflowOutputLink" xmi:id="_psf64K1EEeCpI4KtIjPPpQ" fromBlock="_N0FQ8ohVEeCVetbDxMcYIg" toBlock="_o7q64K1EEeCpI4KtIjPPpQ"/>
    <links xmi:type="ird:WorkflowOutputLink" xmi:id="_rRIWYK1EEeCpI4KtIjPPpQ" fromBlock="_o7q64K1EEeCpI4KtIjPPpQ" toBlock="_N0FQ84hVEeCVetbDxMcYIg"/>
    <links xmi:type="ird:WorkflowExceptionLink" xmi:id="_86YaIK1GEeCpI4KtIjPPpQ" name="error.queue.submit" fromBlock="_N0FQ84hVEeCVetbDxMcYIg" toBlock="_yVQ1kK1GEeCpI4KtIjPPpQ"/>
    <links xmi:type="ird:WorkflowOutputLink" xmi:id="_BV8mgK1HEeCpI4KtIjPPpQ" fromBlock="_yVQ1kK1GEeCpI4KtIjPPpQ" toBlock="__3xYUK1GEeCpI4KtIjPPpQ"/>
    <links xmi:type="ird:WorkflowOutputLink" xmi:id="_XrkSwK1JEeCpI4KtIjPPpQ" fromBlock="_MEfMcIheEeCbvtYNMEKM_w" toBlock="_N0FQ-4hVEeCVetbDxMcYIg"/>
    <links xmi:type="ird:WorkflowOutputLink" xmi:id="_ueRwQbFUEeCI0-meeCIfpw" name="Busy Treatments" fromBlock="_N0FQ84hVEeCVetbDxMcYIg" toBlock="_n3aUcJwgEeCQdrU3AEaRrw"/>
    <links xmi:type="ird:WorkflowOutputLink" xmi:id="_kL4QsMkuEeKbrba3Jy8G-A" fromBlock="_N0FQ-4hVEeCVetbDxMcYIg" toBlock="_N0FQ8ohVEeCVetbDxMcYIg"/>
    <namespaces xmi:type="datatypes:Property" xmi:id="_KMY2EGPnEeKKD7hgm-qxmg" name="ws" value="http://www.genesyslab.com/modules/ws"/>
    <namespaces xmi:type="datatypes:Property" xmi:id="_KMY2EWPnEeKKD7hgm-qxmg" name="queue" value="http://www.genesyslab.com/modules/queue"/>
    <namespaces xmi:type="datatypes:Property" xmi:id="_KMY2EmPnEeKKD7hgm-qxmg" name="dialog" value="http://www.genesyslab.com/modules/dialog"/>
    <namespaces xmi:type="datatypes:Property" xmi:id="_KMY2E2PnEeKKD7hgm-qxmg" name="session" value="http://www.genesyslab.com/modules/session"/>
    <namespaces xmi:type="datatypes:Property" xmi:id="_KMY2FGPnEeKKD7hgm-qxmg" name="ixn" value="http://www.genesyslab.com/modules/interaction"/>
    <namespaces xmi:type="datatypes:Property" xmi:id="_KMY2FWPnEeKKD7hgm-qxmg" name="classification" value="http://www.genesyslab.com/modules/classification"/>
  </ird:StrategyDiagram>
  <notation:Diagram xmi:id="_IY4zgIhVEeCVetbDxMcYIg" type="Ird" element="_IYJMoIhVEeCVetbDxMcYIg" name="PlayWelcomeMessage.workflow" measurementUnit="Pixel">
    <children xmi:type="notation:Shape" xmi:id="_Nzxu5IhVEeCVetbDxMcYIg" type="1002" element="_N0FQ8YhVEeCVetbDxMcYIg">
      <children xmi:type="notation:DecorationNode" xmi:id="_Nzxu5YhVEeCVetbDxMcYIg" type="6002"/>
      <children xmi:type="notation:DecorationNode" xmi:id="_Nzxu5ohVEeCVetbDxMcYIg" type="4001"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_Nzxu54hVEeCVetbDxMcYIg" x="214" y="720"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_Nzxu6IhVEeCVetbDxMcYIg" type="1003" element="_N0FQ8ohVEeCVetbDxMcYIg">
      <children xmi:type="notation:DecorationNode" xmi:id="_Nzxu6YhVEeCVetbDxMcYIg" type="4002"/>
      <children xmi:type="notation:DecorationNode" xmi:id="_Nzxu6ohVEeCVetbDxMcYIg" type="4003"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_Nzxu64hVEeCVetbDxMcYIg" x="214" y="250"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_Nzxu7IhVEeCVetbDxMcYIg" type="1014" element="_N0FQ84hVEeCVetbDxMcYIg">
      <children xmi:type="notation:DecorationNode" xmi:id="_Nzxu7YhVEeCVetbDxMcYIg" type="4024"/>
      <children xmi:type="notation:DecorationNode" xmi:id="_Nzxu7ohVEeCVetbDxMcYIg" type="4025"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_Nzxu74hVEeCVetbDxMcYIg" x="214" y="500"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_Nzxu9IhVEeCVetbDxMcYIg" type="1026" element="_N0FQ9ohVEeCVetbDxMcYIg">
      <children xmi:type="notation:DecorationNode" xmi:id="_Nzxu9YhVEeCVetbDxMcYIg" type="4048"/>
      <children xmi:type="notation:DecorationNode" xmi:id="_Nzxu9ohVEeCVetbDxMcYIg" type="4049"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_Nzxu94hVEeCVetbDxMcYIg" x="214" y="620" height="50"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_Nzxu-IhVEeCVetbDxMcYIg" type="1020" element="_N0FQ-4hVEeCVetbDxMcYIg">
      <children xmi:type="notation:DecorationNode" xmi:id="_Nzxu-YhVEeCVetbDxMcYIg" type="4036"/>
      <children xmi:type="notation:DecorationNode" xmi:id="_Nzxu-ohVEeCVetbDxMcYIg" type="4037"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_Nzxu-4hVEeCVetbDxMcYIg" x="214" y="136"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_NzxvAIhVEeCVetbDxMcYIg" type="Note" description="Identifies the customer details using his ANI" fillColor="13369343" transparency="0" lineColor="6737151" lineWidth="1">
      <children xmi:type="notation:BasicDecorationNode" xmi:id="_NzxvAYhVEeCVetbDxMcYIg" type="DiagramName">
        <element xsi:nil="true"/>
      </children>
      <children xmi:type="notation:BasicDecorationNode" xmi:id="_NzxvAohVEeCVetbDxMcYIg" type="Description">
        <element xsi:nil="true"/>
      </children>
      <styles xmi:type="notation:TextStyle" xmi:id="_NzxvA4hVEeCVetbDxMcYIg"/>
      <styles xmi:type="notation:LineTypeStyle" xmi:id="_NzxvBIhVEeCVetbDxMcYIg"/>
      <element xsi:nil="true"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_NzxvBYhVEeCVetbDxMcYIg" x="381" y="133"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_NzxvBohVEeCVetbDxMcYIg" type="Note" description="Welcome prompt played using a CallFlow within this project" fillColor="13369343" transparency="0" lineColor="6737151" lineWidth="1">
      <children xmi:type="notation:BasicDecorationNode" xmi:id="_NzxvB4hVEeCVetbDxMcYIg" type="DiagramName">
        <element xsi:nil="true"/>
      </children>
      <children xmi:type="notation:BasicDecorationNode" xmi:id="_NzxvCIhVEeCVetbDxMcYIg" type="Description">
        <element xsi:nil="true"/>
      </children>
      <styles xmi:type="notation:TextStyle" xmi:id="_NzxvCYhVEeCVetbDxMcYIg"/>
      <styles xmi:type="notation:LineTypeStyle" xmi:id="_NzxvCohVEeCVetbDxMcYIg"/>
      <element xsi:nil="true"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_NzxvC4hVEeCVetbDxMcYIg" x="381" y="247"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_NzxvEohVEeCVetbDxMcYIg" type="Note" description="Call is routed to an agent with skill &lt;Customer language> > 9&#xD;&#xA;&#xD;&#xA;The statistic may have to be changed depending on the user environment." fillColor="13369343" transparency="0" lineColor="6737151" lineWidth="1">
      <children xmi:type="notation:BasicDecorationNode" xmi:id="_NzxvE4hVEeCVetbDxMcYIg" type="DiagramName">
        <element xsi:nil="true"/>
      </children>
      <children xmi:type="notation:BasicDecorationNode" xmi:id="_NzxvFIhVEeCVetbDxMcYIg" type="Description">
        <element xsi:nil="true"/>
      </children>
      <styles xmi:type="notation:TextStyle" xmi:id="_NzxvFYhVEeCVetbDxMcYIg"/>
      <styles xmi:type="notation:LineTypeStyle" xmi:id="_NzxvFohVEeCVetbDxMcYIg"/>
      <element xsi:nil="true"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_NzxvF4hVEeCVetbDxMcYIg" x="381" y="497"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_NzxvGIhVEeCVetbDxMcYIg" type="Note" description="Email acknowledgement is sent to the caller once the call is successfully routed to the agent" fillColor="13369343" transparency="0" lineColor="6737151" lineWidth="1">
      <children xmi:type="notation:BasicDecorationNode" xmi:id="_NzxvGYhVEeCVetbDxMcYIg" type="DiagramName">
        <element xsi:nil="true"/>
      </children>
      <children xmi:type="notation:BasicDecorationNode" xmi:id="_NzxvGohVEeCVetbDxMcYIg" type="Description">
        <element xsi:nil="true"/>
      </children>
      <styles xmi:type="notation:TextStyle" xmi:id="_NzxvG4hVEeCVetbDxMcYIg"/>
      <styles xmi:type="notation:LineTypeStyle" xmi:id="_NzxvHIhVEeCVetbDxMcYIg"/>
      <element xsi:nil="true"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_NzxvHYhVEeCVetbDxMcYIg" x="381" y="617"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_MEfMf4heEeCbvtYNMEKM_w" type="1001" element="_MEfMcIheEeCbvtYNMEKM_w">
      <children xmi:type="notation:DecorationNode" xmi:id="_MEfMgYheEeCbvtYNMEKM_w" type="6003"/>
      <children xmi:type="notation:DecorationNode" xmi:id="_MEfMgoheEeCbvtYNMEKM_w" type="6001"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_MEfMgIheEeCbvtYNMEKM_w" x="214" y="36"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_n3aUcZwgEeCQdrU3AEaRrw" type="1012" element="_n3aUcJwgEeCQdrU3AEaRrw">
      <children xmi:type="notation:DecorationNode" xmi:id="_n3aUc5wgEeCQdrU3AEaRrw" type="4020"/>
      <children xmi:type="notation:DecorationNode" xmi:id="_n3aUdJwgEeCQdrU3AEaRrw" type="4021"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_n3aUcpwgEeCQdrU3AEaRrw" x="60" y="623"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_o7rh8K1EEeCpI4KtIjPPpQ" type="1007" element="_o7q64K1EEeCpI4KtIjPPpQ" fontName="Segoe UI">
      <children xmi:type="notation:DecorationNode" xmi:id="_o7sJAK1EEeCpI4KtIjPPpQ" type="4010"/>
      <children xmi:type="notation:DecorationNode" xmi:id="_o7sJAa1EEeCpI4KtIjPPpQ" type="4011"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_o7rh8a1EEeCpI4KtIjPPpQ" x="214" y="350"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="_yVamkK1GEeCpI4KtIjPPpQ" type="1003" element="_yVQ1kK1GEeCpI4KtIjPPpQ" fontName="Segoe UI">
      <children xmi:type="notation:DecorationNode" xmi:id="_yVamkq1GEeCpI4KtIjPPpQ" type="4002"/>
      <children xmi:type="notation:DecorationNode" xmi:id="_yVamk61GEeCpI4KtIjPPpQ" type="4003"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="_yVamka1GEeCpI4KtIjPPpQ" x="-150" y="571"/>
    </children>
    <children xmi:type="notation:Shape" xmi:id="__3xYUa1GEeCpI4KtIjPPpQ" type="1010" element="__3xYUK1GEeCpI4KtIjPPpQ" fontName="Segoe UI">
      <children xmi:type="notation:DecorationNode" xmi:id="__3xYU61GEeCpI4KtIjPPpQ" type="4016"/>
      <children xmi:type="notation:DecorationNode" xmi:id="__3xYVK1GEeCpI4KtIjPPpQ" type="4017"/>
      <layoutConstraint xmi:type="notation:Bounds" xmi:id="__3xYUq1GEeCpI4KtIjPPpQ" x="-150" y="669"/>
    </children>
    <styles xmi:type="notation:DiagramStyle" xmi:id="_IY4zgYhVEeCVetbDxMcYIg"/>
    <edges xmi:type="notation:Connector" xmi:id="_sopxUYhVEeCVetbDxMcYIg" type="3001" element="_sopxUIhVEeCVetbDxMcYIg" source="_Nzxu7IhVEeCVetbDxMcYIg" target="_Nzxu9IhVEeCVetbDxMcYIg" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xmi:type="notation:DecorationNode" xmi:id="_sopxVIhVEeCVetbDxMcYIg" type="5001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_sopxVYhVEeCVetbDxMcYIg" x="5" y="5"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_sopxUohVEeCVetbDxMcYIg"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_sopxU4hVEeCVetbDxMcYIg" points="[0, 0, 12, -110]$[-12, 110, 0, 0]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_soziUIhVEeCVetbDxMcYIg" id="(0.6636363636363637,1.0)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_soziUYhVEeCVetbDxMcYIg" id="(0.5,0.0)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_ucfyEZwgEeCQdrU3AEaRrw" type="3001" element="_ucfyEJwgEeCQdrU3AEaRrw" source="_Nzxu9IhVEeCVetbDxMcYIg" target="_Nzxu5IhVEeCVetbDxMcYIg" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xmi:type="notation:DecorationNode" xmi:id="_ucfyFJwgEeCQdrU3AEaRrw" type="5001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_ucfyFZwgEeCQdrU3AEaRrw" x="5" y="5"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_ucfyEpwgEeCQdrU3AEaRrw"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_ucfyE5wgEeCQdrU3AEaRrw" points="[0, 0, -3, -110]$[3, 110, 0, 0]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_uco8AJwgEeCQdrU3AEaRrw" id="(0.4727272727272727,1.0)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_uco8AZwgEeCQdrU3AEaRrw" id="(0.5,0.0)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_vLu2oZwgEeCQdrU3AEaRrw" type="3001" element="_vLu2oJwgEeCQdrU3AEaRrw" source="_n3aUcZwgEeCQdrU3AEaRrw" target="_Nzxu7IhVEeCVetbDxMcYIg" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xmi:type="notation:DecorationNode" xmi:id="_vLu2pJwgEeCQdrU3AEaRrw" type="5001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_vLu2pZwgEeCQdrU3AEaRrw" x="5" y="5"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_vLu2opwgEeCQdrU3AEaRrw"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_vLu2o5wgEeCQdrU3AEaRrw" points="[0, 25, -154, 148]$[0, 96, -154, 219]$[-312, 96, -466, 219]$[-312, -214, -466, -91]$[154, -214, 0, -91]$[154, -148, 0, -25]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_vL4AkJwgEeCQdrU3AEaRrw" id="(0.4909090909090909,0.96)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_vL4AkZwgEeCQdrU3AEaRrw" id="(0.4727272727272727,0.02)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_psgh8K1EEeCpI4KtIjPPpQ" type="3001" element="_psf64K1EEeCpI4KtIjPPpQ" source="_Nzxu6IhVEeCVetbDxMcYIg" target="_o7rh8K1EEeCpI4KtIjPPpQ" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xmi:type="notation:DecorationNode" xmi:id="_psgh861EEeCpI4KtIjPPpQ" type="5001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_pshJAK1EEeCpI4KtIjPPpQ" x="5" y="5"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_psgh8a1EEeCpI4KtIjPPpQ" fontName="Segoe UI"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_psgh8q1EEeCpI4KtIjPPpQ" points="[2, 0, 0, -50]$[2, 50, 0, 0]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_pslacK1EEeCpI4KtIjPPpQ" id="(0.4636363636363636,1.0)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_pslaca1EEeCpI4KtIjPPpQ" id="(0.4818181818181818,0.0)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_rRIWYa1EEeCpI4KtIjPPpQ" type="3001" element="_rRIWYK1EEeCpI4KtIjPPpQ" source="_o7rh8K1EEeCpI4KtIjPPpQ" target="_Nzxu7IhVEeCVetbDxMcYIg" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xmi:type="notation:DecorationNode" xmi:id="_rRIWZK1EEeCpI4KtIjPPpQ" type="5001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_rRIWZa1EEeCpI4KtIjPPpQ" x="5" y="5"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_rRIWYq1EEeCpI4KtIjPPpQ" fontName="Segoe UI"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_rRIWY61EEeCpI4KtIjPPpQ" points="[-2, 0, 0, -100]$[-2, 100, 0, 0]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_rRIWZq1EEeCpI4KtIjPPpQ" id="(0.5181818181818182,1.0)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_rRIWZ61EEeCpI4KtIjPPpQ" id="(0.5,0.0)"/>
    </edges>
    <edges xmi:type="notation:Edge" xmi:id="_86YaIa1GEeCpI4KtIjPPpQ" type="3002" element="_86YaIK1GEeCpI4KtIjPPpQ" source="_Nzxu7IhVEeCVetbDxMcYIg" target="_yVamkK1GEeCpI4KtIjPPpQ">
      <children xmi:type="notation:DecorationNode" xmi:id="_86YaJa1GEeCpI4KtIjPPpQ" type="5002">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_86YaJq1GEeCpI4KtIjPPpQ" x="5" y="5"/>
      </children>
      <styles xmi:type="notation:RoutingStyle" xmi:id="_86YaIq1GEeCpI4KtIjPPpQ" roundedBendpointsRadius="10" routing="Rectilinear"/>
      <styles xmi:type="notation:FontStyle" xmi:id="_86YaI61GEeCpI4KtIjPPpQ" fontName="Segoe UI"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_86YaJK1GEeCpI4KtIjPPpQ" points="[-55, 0, 309, -71]$[-365, 0, -1, -71]$[-365, 23, -1, -48]$[-364, 23, 0, -48]$[-364, 46, 0, -25]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_86rVEK1GEeCpI4KtIjPPpQ" id="(0.0,0.56)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_86rVEa1GEeCpI4KtIjPPpQ" id="(0.4909090909090909,0.0)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_BV8mga1HEeCpI4KtIjPPpQ" type="3001" element="_BV8mgK1HEeCpI4KtIjPPpQ" source="_yVamkK1GEeCpI4KtIjPPpQ" target="__3xYUa1GEeCpI4KtIjPPpQ" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xmi:type="notation:DecorationNode" xmi:id="_BV8mhK1HEeCpI4KtIjPPpQ" type="5001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_BV8mha1HEeCpI4KtIjPPpQ" x="5" y="5"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_BV8mgq1HEeCpI4KtIjPPpQ" fontName="Segoe UI"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_BV8mg61HEeCpI4KtIjPPpQ" points="[0, 0, 0, -29]$[0, 29, 0, 0]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_BWGXgK1HEeCpI4KtIjPPpQ" id="(0.4818181818181818,1.0)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_BWGXga1HEeCpI4KtIjPPpQ" id="(0.4818181818181818,0.0)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_XruDwK1JEeCpI4KtIjPPpQ" type="3001" element="_XrkSwK1JEeCpI4KtIjPPpQ" source="_MEfMf4heEeCbvtYNMEKM_w" target="_Nzxu-IhVEeCVetbDxMcYIg" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xmi:type="notation:DecorationNode" xmi:id="_XruDw61JEeCpI4KtIjPPpQ" type="5001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_XruDxK1JEeCpI4KtIjPPpQ" x="5" y="5"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_XruDwa1JEeCpI4KtIjPPpQ" fontName="Segoe UI"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_XruDwq1JEeCpI4KtIjPPpQ" points="[0, 1, 0, -50]$[0, 51, 0, 0]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_XruDxa1JEeCpI4KtIjPPpQ" id="(0.5,0.98)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_XruDxq1JEeCpI4KtIjPPpQ" id="(0.5,0.0)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_ufBXILFUEeCI0-meeCIfpw" type="3001" element="_ueRwQbFUEeCI0-meeCIfpw" source="_Nzxu7IhVEeCVetbDxMcYIg" target="_n3aUcZwgEeCQdrU3AEaRrw" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xmi:type="notation:DecorationNode" xmi:id="_ufBXI7FUEeCI0-meeCIfpw" type="5001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_ufBXJLFUEeCI0-meeCIfpw" x="58" y="15"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_ufBXIbFUEeCI0-meeCIfpw"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_ufBXIrFUEeCI0-meeCIfpw" points="[-19, 25, 135, -98]$[-19, 55, 135, -68]$[-154, 55, 0, -68]$[-154, 98, 0, -25]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_ufKhELFUEeCI0-meeCIfpw" id="(0.3181818181818182,1.0)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_ufKhEbFUEeCI0-meeCIfpw" id="(0.4909090909090909,0.0)"/>
    </edges>
    <edges xmi:type="notation:Connector" xmi:id="_kMSgYMkuEeKbrba3Jy8G-A" type="3001" element="_kL4QsMkuEeKbrba3Jy8G-A" source="_Nzxu-IhVEeCVetbDxMcYIg" target="_Nzxu6IhVEeCVetbDxMcYIg" roundedBendpointsRadius="10" routing="Rectilinear" closestDistance="true" lineColor="16711680">
      <children xmi:type="notation:DecorationNode" xmi:id="_kMTugMkuEeKbrba3Jy8G-A" type="5001">
        <layoutConstraint xmi:type="notation:Location" xmi:id="_kMTugckuEeKbrba3Jy8G-A" x="5" y="5"/>
      </children>
      <styles xmi:type="notation:FontStyle" xmi:id="_kMSgYckuEeKbrba3Jy8G-A" fontName="Segoe UI"/>
      <bendpoints xmi:type="notation:RelativeBendpoints" xmi:id="_kMSgYskuEeKbrba3Jy8G-A" points="[1, 0, 0, -160]$[0, 150, -1, -10]"/>
      <sourceAnchor xmi:type="notation:IdentityAnchor" xmi:id="_kMX_8MkuEeKbrba3Jy8G-A" id="(0.4818181818181818,1.0)"/>
      <targetAnchor xmi:type="notation:IdentityAnchor" xmi:id="_kMX_8ckuEeKbrba3Jy8G-A" id="(0.4909090909090909,0.2)"/>
    </edges>
  </notation:Diagram>
</xmi:XMI>
