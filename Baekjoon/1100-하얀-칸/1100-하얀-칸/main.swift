struct Solution {
    private func readString() -> [String] {
        readLine()!.reduce([String]()) { result, element in
            result + [String(element)]
        }
    }
    
    func solution() {
        var chessPan = [[String]]()
        for _ in 1...8 {
            chessPan.append(readString())
        }
        
        var count = 0
        for index in 0...7 {
            if index % 2 == 1 {
                for index1 in 0...7 {
                    if index1 % 2 == 1 && chessPan[index][index1] == "F" {
                        count += 1
                    }
                }
            } else {
                for index1 in 0...7 {
                    if index1 % 2 == 0 && chessPan[index][index1] == "F" {
                        count += 1
                    }
                }
            }
        }
        
        print(count)
    }
}

Solution().solution()
