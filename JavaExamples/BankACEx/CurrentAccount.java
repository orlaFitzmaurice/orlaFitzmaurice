
/**
 * Lab 4 Q2
 *
 *
 * @author Orla Fitzmaurice 20237154
 * @version 13/10/2021
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
     * Method to withdraw money from the account
     *
     * @param w
     */
    @Override
    public void withdraw(double w) {
        if ((super.getBalance() - w) >= (-overdraftLimit)) {
            super.setBalance(super.getBalance() - w);
        } else {
            System.out.println("The maximum overdraft allowed is: " + overdraftLimit);
            super.setBalance(-overdraftLimit);
        }
    }

    /**
     * The toString method
     *
     * @return information about the account
     */
    @Override
    public String toString() {
        return "Current Account\n" + super.toString() + "\nOverdraft Limit: "
                + overdraftLimit + "\n";
    }
}
