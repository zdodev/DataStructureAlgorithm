struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    func solution() {
        let ate = readInteger()
        
        let count = (0...99).map { element1 in
            (0...99).map { element2 in
                element1 + element2
            }
        }.map { element in
            element.filter { element in
                element == ate
            }
        }.filter { element in
            !element.isEmpty
        }
        
        print(count.count)
    }
}

Solution().solution()
