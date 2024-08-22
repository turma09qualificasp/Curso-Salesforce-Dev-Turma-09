public class PropertyTriggerHandler extends TriggerHandler{

    Map<Id, Property__c> oldRecords;
    Map<Id, Property__c> newRecords;

    public PropertyTriggerHandler(){
        oldRecords = (Map<Id, Property__c>) Trigger.oldMap;
        newRecords = (Map<Id, Property__c>) Trigger.newMap;

    }

    public override void beforeInsert(){
        
    }
  }