import java.util.HashMap;

public class TwoSumOptimized {
    public static int[] findTwoSum(int[] array, int target) {
        HashMap<Integer, Integer> indexMap = new HashMap<>();

        for (int pos = 0; pos < array.length; pos++) {
            int needed = target - array[pos];

            if (indexMap.containsKey(needed)) {
                return new int[]{indexMap.get(needed), pos};
            }
            indexMap.put(array[pos], pos);
        }

        return null; //no valid pair found
    }

    public static void main(String[] args) {
        int[] values = {3, 2, 4};
        int target = 6;

        int[] result = findTwoSum(values, target);
        if (result != null) {
            System.out.println("Indices that sum to target: " + result[0] + ", " + result[1]);
        } else {
            System.out.println("No matching pair exists.");
        }
    }
}
