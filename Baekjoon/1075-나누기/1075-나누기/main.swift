import Foundation

struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    private func retuneToZero(_ number: Int) -> Int {
        number / 100 * 100
    }
    
    func solution() {
        let input = readInteger()
        let divider = readInteger()
        var runner = retuneToZero(input)
        
        while runner % divider != 0 {
            runner += 1
        }
        
        print(String(format: "%02d", runner % 100))
    }
}

Solution().solution()
