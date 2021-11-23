import Foundation

struct Solution {
    private func readIntegers() -> [Int]? {
        readLine()?.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        while let input = readLine() {
            let doubles = input.split(separator: " ").map {
                Double($0)!
            }
            
            let result1 = doubles[0] / doubles[1]
            let result2 = round(result1 * 100) / 100
            print(String(format: "%.2f", result2))
        }
    }
}

Solution().solution()
