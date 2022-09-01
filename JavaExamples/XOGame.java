/**
 * XO Game
 * 
 * 
 * @author Orla Fitzmaurice 20237154
 * @version 16/09/2021
 */
import java.util.Scanner;

public class Exercise7_9 {

    public static void main(String[] args) {
        //make a string 3 by 3 matrix of spaces that can be changed to x and 0
        String[][] matrix = new String[3][3];

        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                matrix[i][j] = " ";
            }
        }

        printGame(matrix);
        boolean gOver = false;

        //Ask the players where they want to place their x and o
        //after each enetry print out the game and caheck wheter they have won
        //if not won continue playing
        //while bolean WIN = false
        while (gOver == false) {
            Scanner keyboard = new Scanner(System.in);
            System.out.println("Enter a row (0,1, or 2) for player X:");
            int rX = keyboard.nextInt();
            System.out.println("Enter a column (0,1, or 2) for player X:");
            int cX = keyboard.nextInt();
            matrix[rX][cX] = "X";
            printGame(matrix);
            gOver = checkG(matrix);

            if (gOver == false) {
                System.out.println("Enter a row (0,1, or 2) for player O:");
                int rO = keyboard.nextInt();
                System.out.println("Enter a column (0,1, or 2) for player O:");
                int cO = keyboard.nextInt();
                matrix[rO][cO] = "O";
                printGame(matrix);
                gOver = checkG(matrix);
            }

        }

    }

    // or none of the elements of the matrix are " " you draw
    public static boolean checkG(String[][] m) {
        boolean gOver = false;
        String winner;

//Checking every column
        for (int i = 0; i < 3; i++) {
            if ((m[0][i] == m[1][i]) && (m[0][i] == m[2][i])) {
                if (m[i][i] != " ") {
                    gOver = true;
                    winner = m[i][i];
                    System.out.println("");
                    System.out.println(winner + " player won");
                }
            }
        }
        //Checking every row
        for (int i = 0; i < 3; i++) {
            if ((m[i][0] == m[i][1]) && (m[i][0] == m[i][2])) {
                if (m[i][i] != " ") {
                    gOver = true;
                    winner = m[i][i];
                    System.out.println("");
                    System.out.println(winner + " player won");
                }
            }
        }
        //Checking first diagonal
        if ((m[0][0] == m[1][1]) && (m[0][0] == m[2][2])) {
            if (m[0][0] != " ") {
                gOver = true;
                winner = m[1][1];
                System.out.println("");
                System.out.println(winner + " player won");
            }

        }
        //Checking second diagonal
        if ((m[2][0] == m[1][1]) && (m[2][0] == m[0][2])) {
            if (m[0][0] != " ") {
                gOver = true;
                winner = m[1][1];
                System.out.println("");
                System.out.println(winner + " player won");
            }

        }
        int countEmptys = 0;
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                if (m[i][j] == " ") {
                    countEmptys++;
                }
            }
        }
        if (countEmptys == 0) {
            gOver = true;
            System.out.println("");
            System.out.println("It is a draw");
        }

        return gOver;
    }

    public static void printGame(String[][] m) {
        System.out.println("_____________");
        for (int i = 0; i < m.length; i++) {
            System.out.print("| ");
            for (int j = 0; j < m[0].length; j++) {
                System.out.print(m[i][j] + " | ");
            }
            System.out.println("");
            System.out.println("_____________");
        }
    }

}
