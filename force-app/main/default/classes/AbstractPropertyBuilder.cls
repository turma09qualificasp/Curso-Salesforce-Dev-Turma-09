public abstract class AbstractPropertyBuilder {

    protected Property__c property;

    // Construtor
    public AbstractPropertyBuilder(String name, Id municipioId, String cep, Decimal area, Decimal length, Decimal price) {
        this.property = new Property__c(
            Name = name,
            Municipio__c = municipioId,
            Cep__c = cep,
            Area__c = area,
            Length__c = length,
            Price__c = price
        );
    }

    // Métodos abstratos
    public abstract Object calculatePrice();
    public abstract Object insertObject();
    public abstract Object getResult();
}
