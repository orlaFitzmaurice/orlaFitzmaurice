
/**
 * Class to represent a Current account that inherits from BankAccount
 *
 *
 * @author Orla Fitzmaurice 20237154
 * @version 20/10/2021
 */
public class CurrentAccount extends BankAccount {

    private double overdraftLimit;

    /**
     * No arg constructor that sets the overdraft limit to 0
     */
    public CurrentAccount() {
        overdraftLimit = 0.0;
    }

    /**
     * Constructor that allows you to set the id,balance and overdraft limit
     *
     * @param id
     * @param balance
     * @param oL overdraft limit
     */
    public CurrentAccount(int id, double balance, double oL) {
        super(id, balance);
        overdraftLimit = oL;
    }

    /**
     * Constructor that allows you to set the name, id, balance and overdraft
     * limit
     *
     * @param name
     * @param id
     * @param balance
     * @param oL
     */
    public CurrentAccount(String name, int id, double balance, double oL) {
        super(name, id, balance);
        overdraftLimit = oL;
    }

    /**
     * Method to withdraw money from the account
     *
     * @param w
     */
    @Override
    public void withdraw(double w) {

        if ((super.getBalance() - w) >= (-overdraftLimit)) {

            super.setBalance(super.getBalance() - w);
            transaction.add(new Transaction("W", w, super.getBalance(), ("Withdrawal of " + w)));

        } else {
            w = super.getBalance() + overdraftLimit;
            System.out.println("\n\nACCOUNT NUMBER: " + super.getId());
            System.out.println("THE MAXIMUM OVERDRAFT ALLOWED IS: " + overdraftLimit);
            super.setBalance(-overdraftLimit);
            transaction.add(new Transaction("W", w, (super.getBalance()), ("Withdrawal of " + w)));
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
        return "Current Account\n" + super.toString() + "\nOverdraft Limit: "
                + overdraftLimit + "\n" + super.getTransactions();
    }
}
