public with sharing class HouseBO {
    
    public static void setRatingHouseByPrice(List<House__c> triggerNew){
        for(House__c house : triggerNew){
            if(house.Price__c >= 500000){
                house.Rating__c = 'A';
            } else if(house.Price__c >= 300000){
                house.Rating__c = 'B';
            } else {
                house.Rating__c = 'C';
            }
        }
    }


    public static void createOpportunityWhenSelled(List<House__c> triggerNew){
        List<Opportunity> opportunityToInsert = new List<Opportunity>();
        for(House__c house : triggerNew){
            if(house.Selled__c != null && house.SellDate__c != null &&
            house.Opportunity__c == null){
                Opportunity opportunity = new Opportunity(
                    Name = house.Name,
                    Amount = house.SellValue__c,
                    StageName = 'Closed Won',
                    CloseDate = Date.valueOf(house.SellDate__c),
                    AccountId = house.Account__c
                );
                opportunityToInsert.add(opportunity);
            }    
        }
        if(!opportunityToInsert.isEmpty()){
            insert opportunityToInsert;
        }

        for(House__c house : triggerNew){
            for(Opportunity opportunity :opportunityToInsert){
                house.Opportunity__c = opportunity.Id;
            }
        }
    }
}