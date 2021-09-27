struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    private func readString() -> String {
        readLine()!
    }
    
    func solution() {
        let input = readInteger()
        var dict = [Character: Int]()
        for _ in 1...input {
            let str = readString()
            let chr = str[str.startIndex]
            if dict[chr] != nil {
                dict[chr]! += 1
            } else {
                dict[chr] = 1
            }
        }
        
        var result = ""
        for pair in dict.enumerated() {
            if pair.element.value >= 5 {
                result.append(pair.element.key)
            }
        }
        
        if result.isEmpty {
            print("PREDAJA")
            return
        }
        
        let sorted = result.sorted()
        result.removeAll()
        sorted.forEach { character in
            result.append(character)
        }
        print(result)
    }
}

Solution().solution()
