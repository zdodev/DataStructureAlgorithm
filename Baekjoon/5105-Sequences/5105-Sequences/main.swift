struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        while true {
            let input = readIntegers()
            let (a, b, c) = (input[0], input[1], input[2])
            
            if (a == 0 && b == 0 && c == 0) {
                break
            }
            
            var sum = a
            var count = 0
            
            if b > 0 {
                if c < a {
                    print("X")
                    continue
                }
                
                while sum < c {
                    sum += b
                    count += 1
                }
                
                if sum == c {
                    print(count + 1)
                } else {
                    print("X")
                }
            } else {
                if a < c {
                    print("X")
                    continue
                }
                
                while sum > c {
                    sum += b
                    count += 1
                }
                
                if sum == c {
                    print(count + 1)
                } else {
                    print("X")
                }
            }
        }
    }
}

Solution().solution()
