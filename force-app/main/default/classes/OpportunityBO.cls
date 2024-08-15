public with sharing class OpportunityBO {

    public static void setProbabilityByStageName(List<Opportunity> triggerNew){ 
        for (Opportunity opp : triggerNew) {
            // Verifica se o StageName é "Proposal/Price Quote"
            if (opp.StageName == 'Proposal/Price Quote') {
                opp.Probability = 70;
            }
            // Verifica se o StageName é "Negotiation/Review"
            else if (opp.StageName == 'Negotiation/Review') {
                opp.Probability = 85;
            }
        }
    }

    public static void createCaseByOpportunity(List<Opportunity> triggerNew){
        List<Case> casesToInsert = new List<Case>();
        for (Opportunity opp : triggerNew) {
            Case caso = new Case(
                Status = 'New',
                AccountId = opp.AccountId,
                Origin = 'Phone',
                Priority = 'High',
                ParentId = opp.Id,
                Subject = 'Emitir nota ' + opp.Name
            );
            casesToInsert.add(caso);
        }

        if(!casesToInsert.isEmpty()){
            insert casesToInsert;
        }
    }
}