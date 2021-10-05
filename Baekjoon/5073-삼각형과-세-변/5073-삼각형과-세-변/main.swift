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
            if a == 0 && b == 0 && c == 0 {
                break
            }
            
            let max = input.max()!
            var filtered = input.filter { element in
                element != max
            }
            if filtered.count == 1 {
                filtered.append(max)
            }
            if filtered.count == 0 {
                filtered.append(max)
                filtered.append(max)
            }
            let sum = filtered.reduce(0) { result, element in
                result + element
            }
            
            if sum <= max {
                print("Invalid")
                continue
            }
            
            if a == b && b == c {
                print("Equilateral")
            } else if (a == b && b != c) || (b == c && c != a) || (c == a && a != b) {
                print("Isosceles")
            } else if a != b && b != c && c != a {
                print("Scalene")
            }
        }
    }
}

Solution().solution()

