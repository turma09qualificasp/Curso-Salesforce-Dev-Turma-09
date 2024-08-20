public abstract class AbstractHouseBuilder implements IHouseBuilder {

    protected Decimal beedroms;
    protected Id municipioId;
    protected String cep;
    protected Decimal bathrooms;

    // Construtor
    public AbstractHouseBuilder(Id municipioId) {
        this.municipioId = municipioId;
    }

    // Métodos abstratos
    public abstract IHouseBuilder setBathrooms(Decimal bathrooms);
    public abstract IHouseBuilder setBeedroms(Decimal beedroms);
    public abstract IHouseBuilder setCep(String cep);
    public abstract House__c getResult();
}
