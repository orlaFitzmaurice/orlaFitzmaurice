
/**
 * CS4031 Object Oriented Programming
 * Lab 1 Question 1
 *
 * TestRectangle class
 *
 * @author Orla
 * @version 22/09/2021
 */
public class TestRectangle {

    /**
     * Main method to test the rectangle class
     *
     * @param args
     */
    public static void main(String[] args) {
        Rectangle rectangle1 = new Rectangle();
        Rectangle rectangle2 = new Rectangle(4, 5.5);

        //Prints out the information of the first rectangle object
        System.out.println("rectangle1:");
        System.out.println("Width " + rectangle1.getWidth());
        System.out.println("Height " + rectangle1.getHeight());
        System.out.println("Area " + rectangle1.getArea());
        System.out.println("Perimeter " + rectangle1.getPerimeter());
        System.out.println(" ");

        //Prints out the information of the first rectangle object
        System.out.println("rectangle2:");
        System.out.println("Width " + rectangle2.getWidth());
        System.out.println("Height " + rectangle2.getHeight());
        System.out.println("Area " + rectangle2.getArea());
        System.out.println("Perimeter " + rectangle2.getPerimeter());
        System.out.println(" ");

    }
}
