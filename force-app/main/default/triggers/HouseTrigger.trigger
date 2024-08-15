trigger HouseTrigger on House__c (before insert, before update) {
    List<House__c> triggerNew = Trigger.new;

    if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
        HouseBO.setRatingHouseByPrice(triggerNew);   
        HouseBO.createOpportunityWhenSelled(triggerNew);
    }
}