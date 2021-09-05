struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        var input = readIntegers()
        
        while !(input[0] == 0 && input[1] == 0) {
            if input[0] > input[1] {
                print("Yes")
            } else {
                print("No")
            }
           
            input = readIntegers()
        }
    }
}

Solution().solution()
