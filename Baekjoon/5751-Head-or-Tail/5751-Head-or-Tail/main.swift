struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        while true {
            let count = readInteger()
            if count == 0 {
                return
            }
            
            let input = readIntegers()
            let a = input.filter { element in
                element == 0
            }.count
            let b = input.filter { element in
                element == 1
            }.count
            
            print("Mary won \(a) times and John won \(b) times")
        }
    }
}

Solution().solution()
