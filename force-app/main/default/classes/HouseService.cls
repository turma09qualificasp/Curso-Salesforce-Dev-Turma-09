public with sharing class HouseService {
    @AuraEnabled(cacheable=true)
        public static List<House__c> getRecords(String houseId) {
            try {
                System.debug(houseId);
                // Create a list of House records from a SOQL query
                List<House__c> lstHouses = [
                    SELECT
                    Id,
                    Name,
                    Address__c,
                    State__c,
                    City__c,
                    Zip__c
                    FROM House__c
                    WHERE Id =: houseId
                    WITH USER_MODE
                    ];
                    return lstHouses;
        }
        // Code to handle exception
        catch (Exception e) {
           throw new AuraHandledException(e.getMessage());
        }
    }
}