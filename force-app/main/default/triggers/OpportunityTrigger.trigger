trigger OpportunityTrigger on Opportunity (before insert, before update) {
    List<Opportunity> triggerNew = Trigger.new;
    if((trigger.isInsert || trigger.isUpdate) && trigger.isBefore){
        OpportunityBO.setProbabilityByStageName(triggerNew);
        OpportunityBO.createCaseByOpportunity(triggerNew);
    }
}