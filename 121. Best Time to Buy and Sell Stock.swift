class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        var min = prices[0]
        for i in 1..<prices.count{
            let cost = prices[i] - min
            profit = Swift.max(profit,cost)
            min = Swift.min(min,prices[i])
        }
        return profit
    }
}
