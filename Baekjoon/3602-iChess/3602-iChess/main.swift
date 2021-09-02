struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        let input = readIntegers()
        var count = 1
        
        if input[0] == 0 && input[1] == 0 {
            print("Impossible")
            return
        }
        
        while true {
            let half = (count * count) / 2
            let otherHalf = count * count - half
            
            if (input[0] >= half && input[1] >= otherHalf) || (input[1] >= half && input[0] >= otherHalf) {
            } else {
                break
            }
            count += 1
        }
        
        print(count - 1)
    }
}

Solution().solution()
