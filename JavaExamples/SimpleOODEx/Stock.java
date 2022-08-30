
/**
 * CS4031 Object Oriented Programming
 * Lab 1 Question 2
 *
 * Stock class
 *
 * @author Orla
 * @version 22/09/2021
 */
public class Stock {

    private String symbol;
    private String name;
    private double previousClosingPrice;
    private double currentPrice;

    /**
     * Constructor that allows the user to change the symbol and name of a stock
     * object
     *
     * @param symbol
     * @param name
     */
    public Stock(String symbol, String name) {
        this.symbol = symbol;
        this.name = name;
    }

    /**
     * Method to get the percentage change in price from the
     * previousClosingPrice to the currentPrice
     *
     * @return the percentage change in price
     */
    public double getChangePercentage() {
        double i = previousClosingPrice - currentPrice;
        i = (i / previousClosingPrice) * 100;
        return i;
    }

    /**
     * Method to set the previousClosingPrice
     *
     * @param pPrice
     */
    public void setPreviousClosingPrice(double pPrice) {
        previousClosingPrice = pPrice;
    }

    /**
     * Method to set the currentClosingPrice
     *
     * @param cPrice
     */
    public void setCurrentPrice(double cPrice) {
        currentPrice = cPrice;
    }

    /**
     * Method to return the name of the stock
     *
     * @return
     */
    public String getName() {
        return name;
    }

}
