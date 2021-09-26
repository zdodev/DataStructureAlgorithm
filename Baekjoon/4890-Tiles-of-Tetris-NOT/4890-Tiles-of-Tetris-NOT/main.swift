struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        while true {
            var input = readIntegers()
            var (w, h) = (input[0], input[1])
            
            if w == 0 && h == 0 {
                break
            }
            
            if w < h {
                swap(&w, &h)
            }
            
            if w == h {
                print(1)
                continue
            }
            
            if (w % h) == 0 {
                print(w / h)
            } else {
                print(w * h)
            }
        }
    }
}

Solution().solution()
