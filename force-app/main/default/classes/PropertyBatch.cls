
public class PropertyBatch implements Database.Batchable<sObject>{

    public Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'SELECT Id, Account__c FROM Property__c WHERE Price__c >= 1000000';
        return Database.getQueryLocator(query);
    }

    //SEMPRE PROCESSA EM LOTES DE 200 REGISTROS 
 
    public void execute(Database.BatchableContext bc, List<sObject> scope){
        //SET É UMA COLEÇÃO IGUAL A LISTA AONDE NÃO DEIXA REPETIR OS VALORES
        Set<Id> accountIds = new Set<Id>();
        
        for(Property__c propriedade : (List<Property__c>) scope){
            accountIds.add(propriedade.Account__c);
        }

        String[] addresses = new String[]{};
        List<Contact> contatos = [SELECT Id, Email FROM Contact WHERE AccountId IN: accountIds]; 
        for(Contact contato : contatos){
            addresses.add(contato.Email);
        }
        
        new SendEmailService(addresses).sendEmail();
    }
 
    public void finish(Database.BatchableContext bc){
        System.debug('Finalizou!');
    }
 }