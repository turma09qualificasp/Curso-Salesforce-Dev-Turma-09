public with sharing class TotalValuePropertySalesController {
    
    @AuraEnabled
    public static String getPropertysByMunicipio(String idMunicipio){
        try {
            String queryString = 'SELECT Id, Name, Price__c, Total_Area__c, Cep__c FROM Property__c WHERE Municipio__c = \'' + String.escapeSingleQuotes(idMunicipio) + '\'';
            System.debug(queryString);
                List<Property__c> propertys = (List<Property__c>) new PropertyRepository(null, queryString).doQuery();
                System.debug(propertys);
                return System.JSON.serialize(propertys);
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}