
/**
 * CS4013 Lab 2
 * Q2
 *
 *
 * @author Orla Fitzmaurice 20237154
 * @version 29/09/2021
 */
public class TestMyPoint {

    /**
     * Method to test the MyPOint class
     *
     * @param args
     */
    public static void main(String[] args) {
        MyPoint p1 = new MyPoint();
        MyPoint p2 = new MyPoint(2.5, -6.1);
        MyPoint p3 = new MyPoint(-9, 1.2);

        System.out.printf("p1: ( %.2f,%.2f )\n", p1.getX(), p1.getY());
        System.out.printf("p2: ( %.2f,%.2f )\n", p2.getX(), p2.getY());
        System.out.printf("p3: ( %.2f,%.2f )\n", p3.getX(), p3.getY());

        System.out.printf("The distance between p1 and p2 is %.2f \n", p1.distance(p2));
        System.out.printf("The distance between p2 and p3 is %.2f \n", p2.distance(-9, 1.2));
    }
}
