House__c house = [SELECT Id, Municipio__c, Municipio__r.Name, Municipio__r.Id FROM House__c WHERE Name = 'Casa de Goiás' LIMIT 1];
    System.debug(house.Municipio__r.Name);


    Municipio__c municipio = 
    [SELECT Name,Id,      
    (SELECT Id, Name, Cep__c, Price__c FROM Houses__r WHERE Price__c >= 300000) 
     FROM Municipio__c WHERE Name = 'Goiás' LIMIT 1];

    for(House__c house : municipio.Houses__r){
        System.debug('Casa no LOOP ' + house.Name);
    }
    List<House__c> houses = [SELECT Id FROM House__c WHERE Municipio__c =: municipio.Id];