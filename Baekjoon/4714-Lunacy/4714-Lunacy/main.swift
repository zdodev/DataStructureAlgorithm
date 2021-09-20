import Foundation

struct Solution {
    private func readDouble() -> Double {
        Double(readLine()!)!
    }
    
    func solution() {
        var input = readDouble()
        
        while input > 0 {
            print(String(format: "Objects weighing %.02f on Earth will weigh %.02f on the moon.", input, input * 0.167))
            
            input = readDouble()
        }
    }
}

Solution().solution()
