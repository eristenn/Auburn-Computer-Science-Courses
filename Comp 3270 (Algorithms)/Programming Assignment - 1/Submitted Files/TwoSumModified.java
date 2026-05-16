import java.util.HashMap;

public class TwoSumModified {
    public static int[] getIndices(int[] nums, int target) {
        HashMap<Integer, Integer> seenNumbers = new HashMap<>();

        for (int i = 0; i < nums.length; i++) {
            int complement = target - nums[i];

            if (seenNumbers.containsKey(complement)) {
                //return indices in ascending order
                int first = seenNumbers.get(complement);
                int second = i;
                return new int[]{first, second};
            }

            seenNumbers.put(nums[i], i);
        }

        return new int[]{}; //return empty if not found
    }

    public static void main(String[] args) {
        int[] nums = {5, 8, 12, 3};
        int target = 11;

        int[] ans = getIndices(nums, target);
        if (ans.length == 2) {
            System.out.printf("Indices: %d, %d%n", ans[0], ans[1]);
        } else {
            System.out.println("No two numbers add up to the target.");
        }
    }
}
