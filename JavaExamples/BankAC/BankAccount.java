
/**
 * BankAC Lab Exercise
 * Aim: Create a representation of different types of bank ac's using object oriented inheritance
 *
 * @author Orla Fitzmaurice 
 * @version 20/10/2021
 */
import java.time.LocalDateTime;
import java.util.ArrayList;

public class BankAccount {

    private int id;
    private double balance;
    private static double annualInterestRate;
    private LocalDateTime dateCreated;
    private String name;
    protected ArrayList<Transaction> transaction = new ArrayList<>();

    /**
     * The no arg constructor
     */
    public BankAccount() {
        dateCreated = LocalDateTime.now();
    }

    /**
     * Constructor that allows you to set the id and balance
     *
     * @param id
     * @param balance
     */
    public BankAccount(int id, double balance) {
        this.id = id;
        this.balance = balance;
        dateCreated = LocalDateTime.now();
    }

    /**
     * Constructor that allows you to set the name, id and balance
     *
     * @param name
     * @param id
     * @param balance
     */
    public BankAccount(String name, int id, double balance) {
        this.name = name;
        this.id = id;
        this.balance = balance;
        dateCreated = LocalDateTime.now();
    }

    /**
     * Method to return the id of the bank account
     *
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * Method to return the id of the bank account
     *
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Method to get the balance of the bank account
     *
     * @return balance
     */
    public double getBalance() {
        return balance;
    }

    /**
     * Method to set the balance of the bank account
     *
     * @param b
     */
    public void setBalance(double balance) {
        this.balance = balance;
    }

    /**
     * Method to get the annual Interest Rate of the account
     *
     * @return annualInterestRate
     */
    public static double getAnnualInterestRate() {
        return annualInterestRate;
    }

    /**
     * Method to set the annual Interest Rate of the account
     *
     * @param r
     */
    public static void setAnnualInterestRate(double r) {
        annualInterestRate = r;
    }

    /**
     * Method to get the date created of the account
     *
     * @return dateCreated
     */
    public LocalDateTime getDateCreated() {
        return dateCreated;
    }

    /**
     * Method to get monthly interest rate of the account
     *
     * @return monthly interest rate
     */
    public double getMonthlInterestRate() {
        return annualInterestRate / 12;
    }

    /**
     * Method to withdraw money from the account
     *
     * @param w
     */
    public void withdraw(double w) {
        balance -= w;
        transaction.add(new Transaction("W", w, balance, ("Withdrawal of " + w)));
    }

    /**
     * Method to deposit money into the account
     *
     * @param d
     */
    public void deposit(double d) {

        balance += d;
        transaction.add(new Transaction("D", d, balance, ("Deposit of " + d)));

    }

    /**
     * Method to print out a string with all the information about the
     * transactions
     *
     * @return s
     */
    protected String getTransactions() {

        String s = "\n\nTransactions: ";
        if (transaction.isEmpty() == true) {
            s += "\nNo transactions completed";
        } else {
            for (Transaction t : transaction) {
                s += t.toString() + "\n";
            }
        }
        return s;
    }

    /**
     * The toString method
     *
     * @return information about the account
     */
    public String toString() {
        return "\nName: " + name + "\nId: " + id + "\nBalance: " + balance + "\nAnnual Interest Rate: "
                + annualInterestRate + "\nDate Created: " + dateCreated;
    }

}
