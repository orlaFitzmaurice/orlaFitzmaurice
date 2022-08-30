
/**
 * CS4013 Tutorial 3 Q1/ Lab 4 Q1
 *
 *
 * @author Orla Fitzmaurice 20237154
 * @version 04/10/2021
 */
import java.time.LocalDate;

public class BankAccount {

    private int id;
    private double balance;
    private static double annualInterestRate;
    private LocalDate dateCreated;

    /**
     * The no arg constructor
     */
    public BankAccount() {
        id = 0;
        balance = 0.0;
        dateCreated = LocalDate.now();
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
        dateCreated = LocalDate.now();
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
    public void setBalance(double b) {
        balance = b;
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
    public LocalDate getDateCreated() {
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
    }

    /**
     * Method to deposit money into the account
     *
     * @param d
     */
    public void deposit(double d) {
        balance += d;
    }

    /**
     * The toString method
     *
     * @return information about the account
     */
    public String toString() {
        return "Id: " + id + "\nBalance: " + balance + "\nAnnual Interest Rate: "
                + annualInterestRate + "\nDate Created: " + dateCreated;
    }

}
