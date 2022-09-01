
/**
 * Lab 5
 *
 *
 * @author Orla Fitzmaurice 20237154
 * @version 20/10/2021
 */
public class SavingsAccount extends BankAccount {

    /**
     * The no arg constructor
     */
    public SavingsAccount() {
        super();
    }

    /**
     * Constructor that allows you to set the name, id and balance
     *
     * @param id
     * @param balance
     */
    public SavingsAccount(String name, int id, double balance) {
        super(name, id, balance);
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
            transaction.add(new Transaction("W", w, super.getBalance(), ("Withdrawal of " + w)));

        } else {
            System.out.println("You cannot overdraw your account.\n\n");
            w = super.getBalance();
            super.setBalance(0);
            transaction.add(new Transaction("W", w, 0, ("Withdrawal of " + w)));
        }
    }

    /**
     * Method to deposit money into the account
     *
     * @param d
     */
    public void deposit(double d) {

        super.setBalance(super.getBalance() + d);
        transaction.add(new Transaction("D", d, super.getBalance(), ("Deposit of " + d)));

    }

    /**
     * The toString method
     *
     * @return information about the account
     */
    @Override
    public String toString() {
        return "Savings Account\n" + super.toString() + "\n" + super.getTransactions();
    }
}
