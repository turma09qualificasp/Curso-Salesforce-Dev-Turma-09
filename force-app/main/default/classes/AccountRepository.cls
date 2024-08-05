public class AccountRepository {
    public static Account getAccountById(Id accountId){
        return [SELECT Id, Name, Industry, (SELECT Id, Name From Contacts) FROM Account WHERE ID =: accountId];
    }
    
    public static Account getAccountByName(String nomeConta){
        return [SELECT Id, Name, Industry FROM Account WHERE Name =: nomeConta];
    }
    
    public static void insertAccount(Account acc){
        insert acc;
    }
    
    public static void deleteAccount(Account acc){
        delete acc;
    }
    
    public static void updateAccount(Account acc){
        update acc;
    }
    
    public static void upsertAccount(Account acc){
        upsert acc;
    }
}