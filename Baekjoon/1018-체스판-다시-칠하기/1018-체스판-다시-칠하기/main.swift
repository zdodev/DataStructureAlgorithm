let wb = [
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
]

let bw = [
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
    ["B", "W", "B", "W", "B", "W", "B", "W"],
    ["W", "B", "W", "B", "W", "B", "W", "B"],
]

var chessBoard = [[String]]()

struct Solution {
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    private func readStringToArray() -> [String] {
        readLine()!.reduce([String]()) { result, element in
            result + [String(element)]
        }
    }
    
    private func compareChessBoard(startM: Int, startN: Int) -> Int {
        var wbCount = 0
        var bwCount = 0
        
        for index1 in 0...7 {
            for index2 in 0...7 {
                if wb[index1][index2] != chessBoard[index1 + startM][index2 + startN] {
                    wbCount += 1
                }
                if bw[index1][index2] != chessBoard[index1 + startM][index2 + startN] {
                    bwCount += 1
                }
            }
        }
        
        return min(wbCount, bwCount)
    }
    
    func solution() {
        let mn = readIntegers()
        let m = mn[0]
        let n = mn[1]
        chessBoard = {
            var board = [[String]]()
            
            for _ in 1...m {
                board.append(readStringToArray())
            }
            
            return board
        }()
        
        var paintCount = [Int]()
        
        for index1 in 0...(m - 8) {
            for index2 in 0...(n - 8) {
                paintCount.append(compareChessBoard(startM: index1, startN: index2))
            }
        }
        
        print(paintCount.min()!)
    }
}

Solution().solution()
