Account acc = new Account(Name = 'Casa Account2');
Database.UpsertResult isSucess = (Database.UpsertResult) new AccountRepository(acc, '').doUpsert();
System.debug(isSucess);

String queryString = 'SELECT Name, Price__c FROM House__c WHERE Municipio__r.Name = \'Rio de Janeiro\'';

System.debug(queryString);
List<House__c> houses = (List<House__c>) new HouseRepository(null, queryString).doQuery();
System.debug(houses);

List<House__c> houses = (List<House__c>) new HouseRepository(null, null).getByMunicipio('Rio de Janeiro');
System.debug(houses);