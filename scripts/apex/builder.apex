Double price = 200000;
String houseName = 'Nome da Casa';
String address = 'rua pereira';
Double beedroms = 2;
Id municipioId = [SELECT Id FROM Municipio__c LIMIT 1].Id;

House__c house = new HouseBuilder(municipioId)
        .setBathrooms(3.0)
        .setCep('12345678')
        .setBeedroms(3.0) // Define o número de quartos
        .getResult(); // Obtém o resultado final

System.debug(house);
Boolean upsertSucess = (Boolean) new HouseRepository(house, '').doUpsert();
if(upsertSucess){
    System.debug('Inseriu corretamente');
} else { 
    System.debug('Falhou na inserção');
}
