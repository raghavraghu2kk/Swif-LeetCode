class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        for i in 0..<prices.count-1{
            if(prices[i] < prices[i+1]){
                let sum = prices[i+1] - prices[i]
                profit += sum
            }
        }
        return profit
    }
}