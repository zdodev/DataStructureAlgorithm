struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    private func readOperator() -> String {
        readLine()!
    }
    
    func solution() {
        var result = readInteger()
        var operand = 0
        var `operator` = readOperator()
        
        while `operator` != "=" {
            operand = readInteger()
            
            switch `operator` {
            case "+":
                result += operand
            case "-":
                result -= operand
            case "*":
                result *= operand
            case "/":
                result /= operand
            default:
                break
            }
            
            `operator` = readOperator()
        }
        
        print(result)
    }
}

Solution().solution()
