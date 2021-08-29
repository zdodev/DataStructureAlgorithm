import Foundation

struct Solution {
    private func readInteger() -> Double {
        Double(readLine()!)!
    }
    
    func solution() {
        let input = readInteger()
        
        print(input * input * Double.pi)
        
        let square = input * input + input * input
        
        print(square)
    }
}

Solution().solution()
