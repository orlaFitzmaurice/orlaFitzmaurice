
/**
 * CS4031 Object Oriented Programming
 * Lab 1 Question 2
 *
 * TestStock class
 *
 * @author Orla
 * @version 22/09/2021
 */
public class TestStock {

    /**
     * Main method to test the Stock class
     *
     * @param args
     */
    public static void main(String[] args) {
        Stock stock1 = new Stock("LKSS", "Limerick Software Solutions");
        stock1.setPreviousClosingPrice(79.45);
        stock1.setCurrentPrice(79.65);

        System.out.println(stock1.getName());
        System.out.printf("Percentage change in price: %.2f", stock1.getChangePercentage());
        System.out.println("");

    }
}
