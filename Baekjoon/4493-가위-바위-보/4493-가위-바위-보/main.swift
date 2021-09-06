struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    private func readStrings() -> [String] {
        readLine()!.split(separator: " ").map {
            String($0)
        }
    }
    
    func solution() {
        let testcase = readInteger()
        
        for _ in 1...testcase {
            let count = readInteger()
            var player1 = 0
            var player2 = 0
            
            for _ in 1...count {
                let result = readStrings()
                
                if result[0] == "S" {
                    if result[1] == "S" {
                        // 무승부
                    } else if result[1] == "R" {
                        player2 += 1
                    } else {
                        player1 += 1
                    }
                } else if result[0] == "R" {
                    if result[1] == "S" {
                        player1 += 1
                    } else if result[1] == "R" {
                        // 무승부
                    } else {
                        player2 += 1
                    }
                } else {
                    if result[1] == "S" {
                        player2 += 1
                    } else if result[1] == "R" {
                        player1 += 1
                    } else {
                        // 무승부
                    }
                }
            }
            
            if player1 > player2 {
                print("Player 1")
            } else if player1 < player2 {
                print("Player 2")
            } else {
                print("TIE")
            }
        }
    }
}

Solution().solution()
