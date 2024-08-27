public class AccountRepository implements IRepository {

    Account acc;
    String queryString;

    public AccountRepository(Account accToUpsert, String queryString){
        this.acc = accToUpsert;
        this.queryString = queryString;
    }

    
    public Object doUpsert(){
        insert this.acc;
        return Database.upsert(this.acc, false);
    }

    public Object doQuery(){
        return Database.query(this.queryString);
    }
}