class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var arr = nums
        var pos = 0
        var neg = 1
        for num in nums {
            if(num > 0){
                arr[pos] = num
                pos += 2
            } else {
                arr[neg] = num
                neg += 2
            }
        }
        return arr
    }
}

class Solution1 {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var arr : [Int] = []
        var a1 : [Int] = []
        var a2 : [Int] = []
        for num in nums {
            if(num > 0){
                a1.append(num)
            } else {
                a2.append(num)
            }
        }
        for i in 0..<nums.count/2{
            arr.append(a1[i])
            arr.append(a2[i])
        }
        return arr
    }
}