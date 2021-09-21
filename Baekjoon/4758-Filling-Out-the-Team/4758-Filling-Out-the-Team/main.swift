struct Solution {
    let base = [
        [4.5, 150, 200],
        [6.0, 300, 500],
        [5.0, 200, 300],
    ]
    
    private func readDoubles() -> [Double] {
        readLine()!.split(separator: " ").map {
            Double($0)!
        }
    }
    
    func solution() {
        var input = readDoubles()
        var a = input[0]
        var b = input[1]
        var c = input[2]
        
        while a != 0 && b != 0 && c != 0 {
            var line = ""
            
            if a <= base[0][0] && b >= base[0][1] && c >= base[0][2] {
                line += "Wide Receiver"
            }
            
            if a <= base[1][0] && b >= base[1][1] && c >= base[1][2] {
                if line.count != 0 {
                    line += " Lineman"
                } else {
                    line += "Lineman"
                }
            }
            
            if a <= base[2][0] && b >= base[2][1] && c >= base[2][2] {
                if line.count != 0 {
                    line += " Quarterback"
                } else {
                    line += "Quarterback"
                }
            }
            
            if line.count == 0 {
                print("No positions")
            } else {
                print(line)
            }
            
            input = readDoubles()
            a = input[0]
            b = input[1]
            c = input[2]
        }
    }
}

Solution().solution()
