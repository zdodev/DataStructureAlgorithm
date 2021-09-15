let value = [
    "black": 0,
    "brown": 1,
    "red": 2,
    "orange": 3,
    "yellow": 4,
    "green": 5,
    "blue": 6,
    "violet": 7,
    "grey": 8,
    "white": 9,
]

let multiplier = [
    "black": 1,
    "brown": 10,
    "red": 100,
    "orange": 1_000,
    "yellow": 10_000,
    "green": 100_000,
    "blue": 1_000_000,
    "violet": 10_000_000,
    "grey": 100_000_000,
    "white": 1_000_000_000,
]

struct Solution {
    private func readString() -> String {
        readLine()!
    }
    
    func solution() {
        var input = readString()
        var sum = value[input]! * 10
        
        input = readString()
        sum += value[input]!
        
        input = readString()
        sum *= multiplier[input]!
        
        print(sum)
    }
}

Solution().solution()
