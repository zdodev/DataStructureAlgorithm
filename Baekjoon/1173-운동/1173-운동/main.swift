struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        let input = readIntegers()
        let (n, m, M, t, r) = (input[0], input[1], input[2], input[3], input[4])
        
        var count = 0
        var minute = 0
        var currentBeat = m
        
        if currentBeat + t > M {
            print(-1)
            return
        }
        
        while count != n {
            if currentBeat + t <= M {
                currentBeat += t
                count += 1
            } else {
                if currentBeat - r <= m {
                    currentBeat = m
                } else {
                    currentBeat -= r
                }
            }
            
            minute += 1
        }
        
        print(minute)
    }
}

Solution().solution()
