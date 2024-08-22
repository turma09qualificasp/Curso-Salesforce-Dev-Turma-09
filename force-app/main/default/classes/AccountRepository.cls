public class AccountRepository implements IRepository {

    Account acc;
    String queryString;

    public AccountRepository(Account accToUpsert, String queryString){
        this.acc = accToUpsert;
        this.queryString = queryString;
    }

    
    public Object doUpsert(){
        return Database.upsert(this.acc);
    }

    public Object doQuery(){
        return Database.query(this.queryString);
    }
}