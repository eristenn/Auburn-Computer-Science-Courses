public class TwoSumNaive {
    public static int[] findTwoSum(int[] nums, int target) {
        //checking possible pairs
        for (int first = 0; first < nums.length - 1; first++) {
            for (int second = first + 1; second < nums.length; second++) {
                if (nums[first] + nums[second] == target) {
                    return new int[]{first, second};
                }
            }
        }
        return null; //no valid pair found
    }

    public static void main(String[] args) {
        int[] numbers = {2, 7, 11, 15};
        int target = 9;

        int[] indices = findTwoSum(numbers, target);
        if (indices != null) {
            System.out.println("Match found at positions: " + indices[0] + " and " + indices[1]);
        } else {
            System.out.println("No pair found that sums to the target.");
        }
    }
}
