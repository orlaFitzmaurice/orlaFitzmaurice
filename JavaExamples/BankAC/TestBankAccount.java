
/**
 * Lab 5
 *
 *
 * @author Orla Fitzmaurice 20237154
 * @version 20/10/2021
 */
import java.util.ArrayList;

public class TestBankAccount {

    /**
     * Method to test the Bank Account class and it's subclasses
     *
     * @param args
     */
    public static void main(String[] args) {
        
        BankAccount b1 = new SavingsAccount("Orla", 1, 500);
        
        BankAccount.setAnnualInterestRate(1.3);
         
        b1.deposit(200.35);
        b1.withdraw(50);
        b1.withdraw(200.9);
        System.out.println("ACCOUNT SUMMARY: " + b1.toString());
        
       

        BankAccount b2 = new SavingsAccount("John", 2, 1000);
        b2.withdraw(300);
        b2.withdraw(10.9);
        b2.deposit(110);
        System.out.println("ACCOUNT SUMMARY: " + b2.toString());

        BankAccount b3 = new CurrentAccount("Mike", 3, 200, 100);
        b3.withdraw(700);
        b3.withdraw(10);
        b3.deposit(1000);
        System.out.println("ACCOUNT SUMMARY: " + b3.toString());

        BankAccount b4 = new CurrentAccount("Lucy", 4, 1200, 500);
        b4.deposit(175.98);
        b4.withdraw(2.3);
        b4.withdraw(900);
        b4.deposit(300);
        System.out.println("ACCOUNT SUMMARY: " + b4.toString());
    }
}
