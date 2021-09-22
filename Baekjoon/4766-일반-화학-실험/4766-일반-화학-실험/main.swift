import Foundation

struct Solution {
    private func readDouble() -> Double {
        Double(readLine()!)!
    }
    
    func solution() {
        var input1 = readDouble()
        var input2 = -100.0
        
        while input2 != 999 {
            input2 = readDouble()
            
            if input2 == 999 {
                return
            }
            
            if input2 != -100 {
                let result = input2 - input1
                print(String(format: "%0.2f", result))
            }
            
            input1 = input2
        }
    }
}

Solution().solution()
