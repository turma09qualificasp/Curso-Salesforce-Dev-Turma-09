@isTest
public class AccountTypeCounterTest {

	@isTest
    public static void TestCustomerDirect() {

        List<Account> testAccounts = new List<Account> {

            new Account(Name = 'Account 1', Type = 'Cliente'),

            new Account(Name = 'Account 2', Type = 'Fornecedor'),

            new Account(Name = 'Account 3', Type = 'Cliente'),

            new Account(Name = 'Account 4', Type = 'Parceiro')

        };

        insert testAccounts;

        Test.startTest();
        Map<String, Integer> counts = AccountTypeCounter.countAccountsByType(testAccounts);
        Test.stopTest();

        System.assertEquals(2, counts.get('Cliente'), 'Deveria haver 2 contas do tipo Cliente');
        System.assertEquals(1, counts.get('Fornecedor'), 'Deveria haver 1 contas do tipo Fornecedor');
        System.assertEquals(1, counts.get('Parceiro'), 'Deveria haver 1 contas do tipo Parceiro');

    } 

}
 