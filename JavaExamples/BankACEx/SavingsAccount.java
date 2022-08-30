
/**
 * CS4013 Tutorial 3 Q2/ Lab 4 Q1
 *
 *
 * @author Orla Fitzmaurice 20237154
 * @version 04/10/2021
 */
public class SavingsAccount extends BankAccount {

    /**
     * The no arg constructor
     */
    public SavingsAccount() {
        super();
    }

    /**
     * Constructor that allows you to set the id and balance
     *
     * @param id
     * @param balance
     */
    public SavingsAccount(int id, double balance) {
        super(id, balance);
    }

    /**
     * Method to withdraw money from the account
     *
     * @param w
     */
    @Override
    public void withdraw(double w) {
        if ((super.getBalance() - w) >= 0) {
            super.setBalance(super.getBalance() - w);
        } else {
            System.out.println("You cannot overdraw your account.\n\n");
            super.setBalance(0);
        }
    }

    /**
     * The toString method
     *
     * @return information about the account
     */
    @Override
    public String toString() {
        return "Savings Account\n" + super.toString() + "\n";
    }
}
