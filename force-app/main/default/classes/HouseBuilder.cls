public class HouseBuilder extends AbstractHouseBuilder{

    // Construtor
    public HouseBuilder(Id municipioId) {
        super(municipioId);
    }

    // Implementa o método da interface para encadeamento
    override public IHouseBuilder setBeedroms(Decimal beedroms) {
        this.beedroms = beedroms;
        return this;
    }

    override public IHouseBuilder setCep(String cep) {
        this.cep = cep;
        return this;
    }

    override public IHouseBuilder setBathrooms(Decimal bathrooms) {
        this.bathrooms = bathrooms;
        return this;
    }

    
    override public House__c getResult() {
        House__c house = new House__c();
        house.Bedroom__c = this.beedroms;
        house.Bathrooms__c = this.bathrooms;
        house.Cep__c = this.cep;
        house.Municipio__c = this.municipioId;
        return house;
    }
}
