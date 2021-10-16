struct Solution {
    func add(_ number1: Int, _ number2: Int) -> Int {
        number1 + number2
    }
    
    func solve(_ number: Int) -> [[Int?]] {
        var answer = [[Int?]]()
        
        if number == 1 || number == 2 {
            answer = [[nil]]
        } else {
            for a in 1...number / 2 {
                for b in 2...number {
                    if a == b {
                        continue
                    }
                    
                    let sum = add(a, b)
                    
                    if sum == number {
                        answer.append([a, b])
                    }
                }
            }
        }
        
        return answer
    }
}

struct Answer {
    private let solution = Solution()
    
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func answer() {
        let testcase = readInteger()

        for t in 1...testcase {
            let input = readInteger()
            var stringForm = "Pairs for \(input):"
            
            let result = solution.solve(input)
            
            if result[0][0] == nil {
                print(stringForm)
            } else {
                for i in 0..<result.count {
                    if i == 0 {
                        stringForm += " \(result[i][0]!) \(result[i][1]!)"
                    } else {
                        stringForm += ", \(result[i][0]!) \(result[i][1]!)"
                    }
                }
                print(stringForm)
            }
        }
    }
}

Answer().answer()
