public class AccountTypeCounter {
 
    public static Map<String, Integer> countAccountsByType(List<Account> accountList) {

        // armazenar contato por tipo

        Map<String, Integer> accountTypeCount = new Map<String, Integer>();
 
        

        for(Account acc : accountList) {

            // Verifica se o tipo de contato já está no Map

            if(AccountTypeCount.containsKey(acc.Type) && !String.isBlank(acc.Type)) {

                // Se já existir, incrementa o contador

                accountTypeCount.put(acc.Type, accountTypeCount.get(acc.Type) + 1);

            } else {

                // Se não existir, adiciona o tipo com contador inicial de 1

                accountTypeCount.put(acc.Type, 1);

            }

        }

        return accountTypeCount;

    }

}
 


// List<Account> accounts = [SELECT Id, Type FROM Account LIMIT 20];
// System.debug(accountTypeCounter.countAccountsByType(accounts));
