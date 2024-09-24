public with sharing class AdviceService {

    public void getAdviceById(Integer idAdvice){
        Advice_Integration__mdt metadata = [SELECT endPointAdvice__c FROM Advice_Integration__mdt WHERE DeveloperName = 'Advice'];
        String body = new RandomAdviceCallout(metadata.endPointAdvice__c, 13)
                                            .doCallout();
        AdviceTO advice = AdviceTO.parse(body);
        System.debug(advice);
    }

    public void getRandomAdvice(){
        Advice_Integration__mdt metadata = [SELECT endPointAdvice__c FROM Advice_Integration__mdt WHERE DeveloperName = 'Advice'];
        String body = new RandomAdviceCallout(metadata.endPointAdvice__c, null)
                                            .doCallout();
        AdviceTO advice = AdviceTO.parse(body);
        System.debug(advice);
    }

    public Object getProperty(SObject obj){
        String objectName = obj.getSObjectType().getDescribe().getName();
        Object propriedade = Database.query('SELECT Id, Name FROM ' + objectName + ' LIMIT 1');
        System.debug(propriedade);
        return propriedade;
    }
}


Property__c propriedade = new Property__c();
new AdviceService().getProperty(propriedade);


House__c casa = new House__c();
new AdviceService().getProperty(casa);