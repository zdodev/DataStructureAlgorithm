struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let testcase = readInteger()
        
        for _ in 1...testcase {
            let input = readInteger()
            
            for i in 1...input {
                for j in 1...input {
                    if i == 1 || i == input || j == 1 || j == input {
                        print("#", terminator: "")
                        continue
                    }
                    
                    print("J", terminator: "")
                }
                print("")
            }
            print("")
        }
    }
}

Solution().solution()
