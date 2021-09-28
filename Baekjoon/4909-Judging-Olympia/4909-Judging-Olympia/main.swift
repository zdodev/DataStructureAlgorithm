struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        while true {
            let input = readIntegers().sorted()
            if (input[0] == 0 && input[1] == 0 && input[2] == 0 && input[3] == 0 && input[4] == 0 && input[5] == 0) {
                return
            }
            
            let result = input[1...4]
                .reduce(0) { result, element in
                    result + element
                }
                .words.map { element in
                    Double(element) / 4
                }
            
            let integer = Int(result.first!)
            let double = Double(integer)
            
            if result.first! == double {
                print(integer)
                continue
            }
            
            print(result.first!)
        }
    }
}

Solution().solution()
