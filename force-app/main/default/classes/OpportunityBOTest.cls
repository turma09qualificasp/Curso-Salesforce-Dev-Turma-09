@isTest
public with sharing class OpportunityBOTest {

    @isTest
    public static void shouldSetProbabilityReview() {
        //PROCESSO X COISA, CRIO TAL REGISTRO, ATUALIZO Y PARAMETRO.
        
        //AQUI A GENTE DEFINE O QUE EXATAMENTE QUEREMOS TESTAR.
        Opportunity oppToInsert = new Opportunity(
            StageName = 'Negotiation/Review',
            Name = 'Test Review',
            CloseDate = System.today()+30
        );
        Test.startTest();
            insert oppToInsert;
        Test.stopTest();
        
        Opportunity opp = [SELECT Probability FROM Opportunity WHERE Id =: oppToInsert.Id];
        System.assertEquals(85, opp.Probability, 'Não está com a probabilidade de 85%.');
    }
    
    @isTest
    public static void shouldProbabilityProposal() {        
        Opportunity oppToInsert = new Opportunity(
            StageName = 'Proposal/Price Quote',
            Name = 'Test Proposal',
            CloseDate = System.today()+30
        );
        
        Test.startTest();
            insert oppToInsert;
        Test.stopTest();
        
        Opportunity opp = [SELECT Probability FROM Opportunity WHERE Id =: oppToInsert.Id];
        System.assertEquals(70, opp.Probability, 'Não está com a probabilidade de 70%.');
    }
}