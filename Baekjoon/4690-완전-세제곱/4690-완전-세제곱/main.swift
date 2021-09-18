struct Solution {
    private func pow3(_ number: Int) -> Int {
        number * number * number
    }
    
    func solution() {
        for a in 6...100 {
            for b in 2..<a {
                for c in (b + 1)..<a {
                    for d in (c + 1)..<a {
                        if (pow3(a) == (pow3(b) + pow3(c) + pow3(d))) {
                            print("Cube = \(a), Triple = (\(b),\(c),\(d))")
                        }
                    }
                }
            }
        }
    }
}

Solution().solution()
