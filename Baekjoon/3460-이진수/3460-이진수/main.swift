struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let testcase = readInteger()
        var array = [Int]()
        
        for _ in 1...testcase {
            var binary = readInteger()
            
            while binary != 1 {
                array.append(binary % 2)
                binary /= 2
            }
            
            array.append(1)
            
            var index = 0
            
            for number in array {
                if number == 1 && array.count - 1 == index {
                    print("\(index)")
                } else if number == 1 {
                    print("\(index) ", terminator: "")
                }
                index += 1
            }
            
            array.removeAll()
        }
    }
}

Solution().solution()
