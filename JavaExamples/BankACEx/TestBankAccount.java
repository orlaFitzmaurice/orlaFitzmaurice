
/**
 * Lab 4 Q6
 *
 *
 * @author Orla Fitzmaurice 20237154
 * @version 13/10/2021
 */
import java.util.ArrayList;

public class TestBankAccount {

    /**
     * Method to test the Bank Account class and it's subclasses
     *
     * @param args
     */
    public static void main(String[] args) {
        ArrayList<BankAccount> list = new ArrayList<BankAccount>();
        list.add(new SavingsAccount(1, 500));
        list.add(new SavingsAccount(2, 1000));
        list.add(new CurrentAccount(3, 200, 100));
        list.add(new CurrentAccount(4, 1200, 500));
        
        BankAccount.setAnnualInterestRate(1.3);
        for (BankAccount b : list) {
           
            b.deposit(300);
            b.withdraw(700);
            System.out.println(b.toString());
        }
        
    }
}
