public with sharing class HouseBO {

    @future
    public static void sendEmailFuture(String[] addresses){
        new SendEmailService(addresses).sendEmail();
    }
    
    public static void setRatingHouseByPrice(List<House__c> triggerNew){
        for(House__c house : triggerNew){
            if(house.Price__c >= 500000){
                house.Rating__c = 'A';
                String[] emails = new String[] {'igor.guedes@fatcursos.org.br'  };
                System.enqueueJob(new SendEmailQueueable(emails));
                sendEmailFuture(emails);
            } else if(house.Price__c >= 300000){
                house.Rating__c = 'B';
            } else {
                house.Rating__c = 'C';
            }
        }
    }


    public static void createOpportunityWhenSelled(List<House__c> triggerNew){
        Map<String, Opportunity> opportunityToInsert = new Map<String, Opportunity>();
        for(House__c house : triggerNew){
            if(house.Selled__c != null && house.SellDate__c != null &&
            house.Opportunity__c == null){
                System.debug('ENTROU NO IF');
                Opportunity opportunity = new Opportunity(
                    Name = house.Name,
                    Amount = house.SellValue__c,
                    StageName = 'Closed Won',
                    CloseDate = Date.valueOf(house.SellDate__c),
                    AccountId = house.Account__c
                );
                opportunityToInsert.put(house.Id, opportunity);
            }    
        }
        System.debug(opportunityToInsert);
        if(!opportunityToInsert.isEmpty()){
            insert opportunityToInsert.values();

            for(House__c house : triggerNew){
                house.Opportunity__c = opportunityToInsert.get(house.Id).Id;
            }
        }

    }
}