
/**
 * Class to represent a point
 *
 *
 * @author Orla Fitzmaurice 20237154
 * @version 29/09/2021
 */
public class MyPoint {

    private double x;
    private double y;

    /**
     * No argument constructor
     */
    public MyPoint() {
        x = 0;
        y = 0;
    }

    /**
     * Constructor that allows the student to set the coordinates of the point
     *
     * @param x
     * @param y
     */
    public MyPoint(double x, double y) {
        this.x = x;
        this.y = y;

    }

    /**
     * Method to get the X coordinate
     *
     * @return x
     */
    public double getX() {
        return x;
    }

    /**
     * Method to get the Y coordinate
     *
     * @return y
     */
    public double getY() {
        return y;
    }

    /**
     * Method to find the distance between two points
     *
     * @param point an object of MyPoint class
     * @return d
     */
    public double distance(MyPoint point) {
        double x2 = point.getX();
        double y2 = point.getY();

        double d = Math.pow(x2 - x, 2) + Math.pow(y2 - y, 2);
        d = Math.sqrt(d);
        return d;
    }

    /**
     * Method to find the distance between two points
     *
     * @param x2 x coordinate
     * @param y2 y coordinate
     * @return d
     */
    public double distance(double x2, double y2) {
        double d = Math.pow(x2 - x, 2) + Math.pow(y2 - y, 2);
        d = Math.sqrt(d);
        return d;
    }

}
