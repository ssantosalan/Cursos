import java.util.Arrays;

public class Xbonacci {

    public static double[] tribonacci(double[] s, int n) {
        if (n == 0) {
            return new double[] {};
        }

        if (n == 1) {
            return new double[] { 1 };
        }

        double[] tribonacci = new double[n];
        tribonacci[0] = s[0];
        tribonacci[1] = s[1];
        tribonacci[2] = s[2];

        for (int i = 3; i < n; i++) {
            tribonacci[i] = tribonacci[i - 1] + tribonacci[i - 2] + tribonacci[i - 3];
        }

        return tribonacci;
    }

    public static double[] tribonacci2(double[] s, int n) {
        double[] trib = Arrays.copyOf(s, n);
        for (int i = 3; i < n; i++) {
            trib[i] = trib[i - 1] + trib[i - 2] + trib[i - 3];
        }

        return trib;
    }

}