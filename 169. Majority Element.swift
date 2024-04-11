class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        var el = 0
        for num in nums {
            if(count == 0){
                el = num
            }
            if(el == num){
                count += 1
            } else {
                count -= 1
            }
        }
        return el
    }
}