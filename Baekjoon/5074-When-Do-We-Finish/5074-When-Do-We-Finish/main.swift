import Foundation

struct Solution {
    private func readTimes() -> [Int] {
        readLine()!.split(separator: " ")
            .flatMap {
                $0.split(separator: ":")
                    .map {
                        Int($0)!
                    }
            }
    }
    
    func solution() {
        while true {
            let times = readTimes()
            if times[0] == 0 && times[1] == 0 && times[2] == 0 && times[3] == 0 {
                return
            }
            
            let totalSeconds = times[0] * 60 + times[1] + times[2] * 60 + times[3]
            var result = String(format: "%02d:%02d", totalSeconds / 60 % 24, totalSeconds % 60)
            
            let day = totalSeconds / 60 / 24
            
            if day >= 1 {
                result += " +\(day)"
            }
            print(result)
        }
    }
}

Solution().solution()
