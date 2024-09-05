public with sharing class PropertyRepository implements IRepository{
    
    Property__c property;
    String queryString;
    
    public PropertyRepository(Property__c property, String queryString) {
        this.property = property;
        this.queryString = queryString;
    }

    public List<Object> doQuery(){
        return Database.query(this.queryString);
    }

    public Object doUpsert(){
        try {
            Database.upsert(this.property);
            return true;
        } catch (Exception e) {
            System.debug(e);
            return false; 
        }
    }

    public Object getByMunicipio(String municipio){
        String queryString = 'SELECT Id FROM Property__c WHERE Municipio__r.Name = \'' + municipio + '\'';
        return Database.query(queryString);
    }
}