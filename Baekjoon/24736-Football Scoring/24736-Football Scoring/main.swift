struct Solution {
    private func readInteger() -> [Int] {
        readLine()!.split(separator: " ")
            .map { Int($0)! }
    }
    
    func solution() {
        for _ in 0...1 {
            let score = readInteger()
            let result =
            score[0] * 6 +
            score[1] * 3 +
            score[2] * 2 +
            score[3] * 1 +
            score[4] * 2
            print(result)
        }
    }
}

Solution().solution()

