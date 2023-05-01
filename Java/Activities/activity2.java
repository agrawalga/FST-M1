package activities;

import java.util.Arrays;

public class activity2 {
    public static void main(String[] args) {

        int[] numArr = {10, 77, 10, 54, -11, 10};
        System.out.println("Original Array: " + Arrays.toString(numArr));

        int Num = 10;
        int Sum = 30;

        System.out.println("Result: " + result(numArr, Num, Sum));
    }

    public static boolean result(int[] numbers, int Num, int Sum) {
        int temp_sum = 0;

        for (int number : numbers) {
            if (number == Num) {
                temp_sum += Num;
            }

            if (temp_sum > Sum) {
                break;
            }
        }

        return temp_sum == Sum;
    }
}
