public with sharing class HouseRepository implements IRepository{
    
    House__c house;
    String queryString;
    
    public HouseRepository(House__c house, String queryString) {
        this.house = house;
        this.queryString = queryString;
    }

    public Object doQuery(){
        return Database.query(this.queryString);
    }

    public Object doUpsert(){
        try {
            Database.upsert(this.house);
            return true;
        } catch (Exception e) {
            System.debug(e);
            return false; 
        }
    }

    public Object getByMunicipio(String municipio){
        String queryString = 'SELECT Id FROM House__c WHERE Municipio__r.Name = \'' + municipio + '\'';
        return Database.query(queryString);
    }
}


