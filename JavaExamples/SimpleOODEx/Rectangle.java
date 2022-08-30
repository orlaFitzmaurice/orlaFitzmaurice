
/**
 * CS4031 Object Oriented Programming
 * Lab 1 Question 1
 *
 * Rectangle Class
 *
 * @author Orla
 * @version 22/09/2021
 */
public class Rectangle {

    private double width;
    private double height;

    /**
     * No argument constructor that sets the data field to a default value of 1
     */
    public Rectangle() {
        width = 1;
        height = 1;
    }

    /**
     * Constructor that allows the user to set the values of width and height
     *
     * @param width
     * @param height
     */
    public Rectangle(double width, double height) {
        this.width = width;
        this.height = height;
    }

    /**
     * Method to find the area of the rectangle
     *
     * @return the area of the rectangle
     */
    public double getArea() {
        return width * height;
    }

    /**
     * Method to find the perimeter of the rectangle
     *
     * @return the perimeter of the rectangle
     */
    public double getPerimeter() {
        return (2 * width) + (2 * height);
    }

    public double getWidth() {
        return width;
    }

    public double getHeight() {
        return height;
    }

}
