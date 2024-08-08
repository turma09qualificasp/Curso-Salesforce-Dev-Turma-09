House__c house = [SELECT Id, Municipio__r.Name, Municipio__r.Id FROM House__c WHERE Name = 'Casa de Goiás' LIMIT 1];
    System.debug(house.Municipio__r.Name);


    Municipio__c municipio = [SELECT Name, (SELECT Name FROM Houses__r) FROM Municipio__c WHERE Name = 'Goiás' LIMIT 1];

    for(House__c house : municipio.Houses__r){
        System.debug('Casa no LOOP ' + house.Name);
    }
    List<House__c> houses = [SELECT Id FROM House__c WHERE Municipio__c =: municipio.Id];