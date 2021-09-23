struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    private func readString() -> String {
        readLine()!
    }
    
    func solution() {
        let count = readInteger()
        var str = [String]()
        
        for _ in 1...count {
            str.append(readString())
        }
        
        var result = ""
        
        for index1 in 0..<str[0].count {
            let strIndex1 = str[0].index(str[0].startIndex, offsetBy: index1)
            
            let chr = str[0][strIndex1]
            var b = true
            
            for index2 in 0..<count {
                let strIndex2 = str[index2].index(str[index2].startIndex, offsetBy: index1)

                let anotherChr = str[index2][strIndex2]
                
                if chr != anotherChr {
                    b = false
                    break
                }
            }
            
            if b {
                result.append(chr)
            } else {
                result.append("?")
            }
        }
        
        print(result)
    }
}

Solution().solution()
