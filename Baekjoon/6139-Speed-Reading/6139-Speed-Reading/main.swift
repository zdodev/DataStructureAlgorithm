struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        let input = readIntegers()
        let totalPage = input[0]
        let totalCowCount = input[1]
        
        for _ in 1...totalCowCount {
            var totalTime = 0
            var currentPage = 0
            
            let cow = readIntegers()
            
            let page = cow[0]
            let limit = cow[1]
            let restTime = cow[2]
            
            while true {
                for _ in 1...limit {
                    currentPage += page
                    totalTime += 1
                    if currentPage >= totalPage {
                        break
                    }
                }
                if currentPage >= totalPage {
                    break
                }
                totalTime += restTime
            }
            
            print(totalTime)
        }
    }
}

Solution().solution()
