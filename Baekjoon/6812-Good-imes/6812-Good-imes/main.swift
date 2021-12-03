import Foundation
struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        let input = readIntegers()
        var result = false
        
        if (input[0] + input[1]) == input[2] {
            result = true
        }
        if (input[1] + input[2]) == input[0] {
            result = true
        }
        if (input[2] + input[0]) == input[1] {
            result = true
        }
        if input[0] == input[1] {
            result = true
        }
        if input[1] == input[2] {
            result = true
        }
        if input[2] == input[0] {
            result = true
        }
        
        if result {
            print("S")
        } else {
            print("N")
        }
    }
}

Solution().solution()
