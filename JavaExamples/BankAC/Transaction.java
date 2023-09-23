
/**
 * BankAC Lab Exercise
 * Aim: Create a representation of different types of bank ac's using object oriented inheritance
 *
 * @author Orla Fitzmaurice 
 * @version 20/10/2021
 */
import java.time.LocalDateTime;

public class Transaction {

    private LocalDateTime date;
    private String type; //Only W or D
    private double amount;
    private double balance;
    private String description;

    /**
     * Constructor to set the type, amount, balance and description
     *
     * @param type
     * @param am
     * @param bal
     * @param desc
     */
    public Transaction(String type, double amount, double balance, String description) {
        this.type = type;
        this.amount = amount;
        this.balance = balance;
        this.description = description;
        date = LocalDateTime.now();
    }

    /**
     * The toString method
     *
     * @return information about the transaction
     */
    public String toString() {
        return "\n\nTransaction details: " + "\nDescription: " + description
                + "\nDate: " + date + "\nType: " + type
                + "\nAmount: " + amount + "\nNew Balance: " + balance;
    }
}
