import Foundation

struct Solution {
    private func readIntegers() -> [Double] {
        readLine()!.split(separator: " ").map {
            Double($0)!
        }
    }
    
    func solution() {
        var input = readIntegers()
        
        while input[0] != 0 && input[1] != 0 && input[2] != 0 && input[3] != 0 {
            let (a, b, c, d) = (input[0], input[1], input[2], input[3])
            let first = [c / a, d / b]
                .map { element in
                    floor(element * 100) / 100
                }
            let second = [d / a, c / b]
                .map { element in
                    floor(element * 100) / 100
                }
            var result = [first.min()!, second.min()!].max()!
            
            if result >= 1 {
                result = 1
            }
            
            print(String(format: "%d%%", Int(result * 100)))
            input = readIntegers()
        }
    }
}

Solution().solution()
