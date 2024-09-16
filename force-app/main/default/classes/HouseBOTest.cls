@isTest
public with sharing class HouseBOTest {
	
    @TestSetup
    static void makeData(){
        Account acc = GenerateTestSetup.createAccount('Vendedor de Casa');
        insert acc;
    }

    
    @isTest
    public static void shouldSetRatingA() {   
        House__c house = GenerateTestSetup.createHouse(50000000, 'Expensive House');     


        Test.startTest();
            insert house;
        Test.stopTest();
        
        House__c ratingAHouse = [SELECT Rating__c FROM House__c WHERE Id =: house.id];
        System.assertEquals('A', ratingAHouse.Rating__c, 'Não está com o Rating A!');
    }
    
    @isTest
    public static void shouldSetRatingB() {   
        House__c house = GenerateTestSetup.createHouse(400000, 'Medium House');

        Test.startTest();
            insert house;
        Test.stopTest();
        
        House__c ratingAHouse = [SELECT Rating__c FROM House__c WHERE Id =: house.id];
        System.assertEquals('B', ratingAHouse.Rating__c, 'Não está com o Rating B!');
    }
    
    @isTest
    public static void shouldSetRatingC() { 
        House__c house = GenerateTestSetup.createHouse(20000, 'Cheap House');       

        Test.startTest();
            insert house;
        Test.stopTest();
        
        House__c ratingAHouse = [SELECT Rating__c FROM House__c WHERE Id =: house.id];
        System.assertEquals('C', ratingAHouse.Rating__c, 'Não está com o Rating C!');
    }
    
    @isTest
    public static void shouldCreateOpportunity() {        
		Account acc = [SELECT Id FROM Account WHERE Name = 'Vendedor de Casa' LIMIT 1];
        
        House__c house = GenerateTestSetup.createHouseWithAccount(20000, 'Cheap House', acc.Id);       

        Test.startTest();
            insert house;
        Test.stopTest();
        
        List<Opportunity> opps = [SELECT Id FROM Opportunity WHERE AccountId =: acc.id];
        System.assertEquals(1, opps.size(), 'Não está com a quantidade correta de Oportunidades.');
    }
}