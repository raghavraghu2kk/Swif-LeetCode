class Solution {
    func sortColors(_ nums: inout [Int]) {
        var low = 0
        var high = nums.count - 1
        var mid = 0
        while(mid <= high){
            if(nums[mid] == 0){
                (nums[mid],nums[low]) = (nums[low],nums[mid])
                mid += 1
                low += 1
            } else if(nums[mid] == 1){
                mid += 1
            } else {
                (nums[mid],nums[high]) = (nums[high],nums[mid])
                high -= 1
            }
        }
    }
}