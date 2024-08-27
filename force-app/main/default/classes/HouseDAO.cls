public with sharing class HouseDAO {
    public Object getByMunicipio(String municipio){
        String queryString = 'SELECT Id FROM House__c WHERE Municipio__r.Name = \'' + municipio + '\'';
        return Database.query(queryString);
    }

    //SAO COMUNS DE SEREM USADA
}