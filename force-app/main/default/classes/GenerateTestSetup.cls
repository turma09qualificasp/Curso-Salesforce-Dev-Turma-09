@isTest
public with sharing class GenerateTestSetup {
    public static House__c createHouse(Integer price, String name){
        House__c house = new House__c(
            Price__c = price,
            Name = name,
            Cep__c = '12345678'
        );
        return house;
    }

    public static House__c createHouseWithAccount(Integer price, String name, Id accId){
        House__c house = new House__c(
            Price__c = price,
            Name = name,
            Cep__c = '12345678',
            Selled__c = true,
            SellDate__c = System.now(),
            SellValue__c = price,
            Account__c = accId
        );

        return house;
    }

    public static Account createAccount(String name){
        Account acc = new Account(Name = name);
        return acc;
    }

    public static Municipio__c createMunicipio(){
        Municipio__c municipio = new Municipio__c(
            Name = 'Goias'
        );
        return municipio;
    }

    public static Property__c createProperty(){
        Property__c property = new Property__c(
            Name = 'Propriedade do Ze'
        );
        return property;
    }

    public static void createSetup(){
        Account acc = createAccount('AccountTest');
        insert acc;

        Municipio__c municipio = createMunicipio();
        insert municipio;

        Property__c property = createProperty();
        insert property;

        House__c house = createHouseWithAccount(500000, 'Nome da Casa', acc.Id);
        house.Municipio__c = municipio.Id;
        house.Property__c = property.Id;
        insert house;

    }
}