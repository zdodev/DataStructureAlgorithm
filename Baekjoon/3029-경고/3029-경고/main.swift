import Foundation

struct Solution {
    private func readTime() -> Int {
        let input = readLine()!.split(separator: ":").map {
            Int($0)!
        }
        
        let hour = input[0] * 3600
        let minute = input[1] * 60
        let second = input[2]
        
        return hour + minute + second
    }
    
    func solution() {
        let firstTime = readTime()
        var secondTime = readTime()
        
        if firstTime >= secondTime {
            secondTime += 24 * 3600
        }
        
        var waitTotalSecond = secondTime - firstTime
        
        let waitHour = waitTotalSecond / 3600
        waitTotalSecond %= 3600
        
        let waitMinute = waitTotalSecond / 60
        waitTotalSecond %= 60
        
        let waitSecond = waitTotalSecond
        
        print(String(format: "%02d:%02d:%02d", waitHour, waitMinute, waitSecond))
    }
}

Solution().solution()
