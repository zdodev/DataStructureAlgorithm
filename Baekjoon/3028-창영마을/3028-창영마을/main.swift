struct Solution {
    private func readString() -> String {
        readLine()!
    }
    
    func solution() {
        var trickery = [1, 0, 0]
        let input = readString()
        
        input.forEach { character in
            if character == "A" {
                trickery.swapAt(0, 1)
            } else if character == "B" {
                trickery.swapAt(1, 2)
            } else if character == "C" {
                trickery.swapAt(0, 2)
            }
        }
        
        let index = trickery.firstIndex(of: 1)!
        print(index + 1)
    }
}

Solution().solution()
