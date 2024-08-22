Id municipioId = [SELECT Imposto__r.Iof__c FROM Municipio__c WHERE Name = 'SP' LIMIT 1].Id;
String cep = '12345678';
Decimal area = 30;
Decimal length = 10;
Decimal price = 500000;

HouseBuilder houseBuilder = new HouseBuilder('Teste MAP', municipioId, cep, area, length, price);
houseBuilder.calculatePrice();
housebuilder.createHouse(3, 2);
housebuilder.insertObject();