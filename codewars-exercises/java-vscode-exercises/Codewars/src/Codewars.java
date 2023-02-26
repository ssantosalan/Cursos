public class Codewars {
    public static int[] take(int[] arr, int n) {
        if (arr == null || arr.length == 0) {
            return new int[0];
        }
        int[] result = new int[Math.min(n, arr.length)];
        for (int i = 0;  i < result.length; i++) {
            result[i] = arr[i];
        }
        return result;
     }
}
