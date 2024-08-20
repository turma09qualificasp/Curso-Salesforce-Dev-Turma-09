public interface IHouseBuilder {
    IHouseBuilder setBathrooms(Decimal bathrooms);
    IHouseBuilder setBeedroms(Decimal beedroms);
    IHouseBuilder setCep(String cep);
    House__c getResult();
}
