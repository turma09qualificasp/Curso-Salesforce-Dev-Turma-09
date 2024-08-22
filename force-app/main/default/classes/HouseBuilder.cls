public class HouseBuilder extends AbstractPropertyBuilder{


    House__c house;
    // Construtor
    public HouseBuilder(String name, Id municipioId, String cep, Decimal area, Decimal length, Decimal price) {
        super(name, municipioId, cep, area, length, price);
    }

    override public Object calculatePrice() {
         //TEMOS O ID DO MUNICIPIO
        Municipio__c municipio = [SELECT Imposto__r.Iof__c FROM Municipio__c WHERE Id =: this.property.Municipio__c LIMIT 1];
        this.property.Price__c = this.property.Price__c -  (this.property.Price__c * municipio.Imposto__r.Iof__c);
        return this;
    }

    public void createHouse(Decimal beedroms, Decimal bathrooms){
        this.house = new House__c(
            Bathrooms__c = bathrooms,
            Bedroom__c = beedroms,
            Cep__c = this.property.Cep__c,
            Name = this.property.Name
        );
    }

    override public Object getResult() {
        System.debug(this.property);
        return this.property;
    }

    override public Object insertObject(){
        insert this.property;
        this.house.Property__c = this.property.Id;
        insert this.house;
        return this;
    }
}