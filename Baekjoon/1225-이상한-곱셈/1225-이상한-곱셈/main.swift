struct Solution {
    private func readString() -> [String] {
        readLine()!.split(separator: " ").map {
            String($0)
        }
    }
    
    func solution() {
        let input = readString()
        let (a, b) = (input[0], input[1])
        let value1 = a.reduce(0) { result, character in
            result + Int(String(character))!
        }
        let value2 = b.reduce(0) { result, character in
            result + Int(String(character))!
        }
        let sum = value1 * value2
        print(sum)
    }
}

Solution().solution()

