let dictionary = [
    "a": 3, "b": 2, "c": 1, "d": 2, "e": 3,
    "f": 3, "g": 2, "h": 3, "i": 3, "j": 2,
    "k": 2, "l": 1, "m": 2, "n": 2, "o": 1,
    "p": 2, "q": 2, "r": 2, "s": 1, "t": 2,
    "u": 1, "v": 1, "w": 1, "x": 2, "y": 2,
    "z": 1,
]

struct Solution {
    private func readString() -> [String] {
        readLine()!.reduce([String]()) { result, element in
            result + [String(element)]
        }
    }
    
    func solution() {
        let a = readString()
        let b = readString()
        var name = [String]()
        
        for index in 0..<a.count {
            name.append(a[index].lowercased())
            name.append(b[index].lowercased())
        }
        
        var numbers = name.map { element in
            dictionary[element]!
        }
        
        while numbers.count != 2 {
            var newNumbers = [Int]()
            for index in 0..<numbers.count - 1 {
                newNumbers.append((numbers[index] + numbers[index + 1]) % 10)
            }
            numbers = newNumbers
        }
        
        print("\(numbers[0])\(numbers[1])")
    }
}

Solution().solution()
