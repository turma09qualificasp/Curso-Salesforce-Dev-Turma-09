//NAO EXISTE UM ID ENQUANTO O REGISTRO NAO É INSERIDO NO BANCO DE DADOS
Municipio__c municipio = new Municipio__c(
    Name = 'Goiás'
);
 
insert municipio;
House__c casa = new House__c(
    Municipio__c = municipio.Id,
    Name = 'Casa de Goiás'
);
    
insert casa;