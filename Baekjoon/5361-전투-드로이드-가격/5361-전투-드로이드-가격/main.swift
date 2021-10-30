import Foundation

struct Droid {
    private let blaster = 350.34
    private let lightSensor = 230.90
    private let hearingSensor = 190.55
    private let arm = 125.30
    private let leg = 180.90
    
    func price(_ blaster: Int, _ light: Int, _ hearingSensor: Int, _ arm: Int, _ leg: Int) -> String {
        var result = 0.0
        
        result += calculatorBlasterPrice(blaster)
        result += calculatorLightPrice(light)
        result += calculatorhearingPrice(hearingSensor)
        result += calculateArmPrice(arm)
        result += calculateLegPrice(leg)
        
        return String(format: "$%.02f", result)
    }
    
    private func calculatorBlasterPrice(_ blaster: Int) -> Double {
        Double(blaster) * self.blaster
    }
    
    private func calculatorLightPrice(_ light: Int) -> Double {
        Double(light) * self.lightSensor
    }
    
    private func calculatorhearingPrice(_ hearingSensor: Int) -> Double {
        Double(hearingSensor) * self.hearingSensor
    }
    
    private func calculateArmPrice(_ arm: Int) -> Double {
        Double(arm) * self.arm
    }
    
    private func calculateLegPrice(_ leg: Int) -> Double {
        Double(leg) * self.leg
    }
}

struct Solution {
    private func readInteger() -> Int {
        Int(readLine()!)!
    }
    
    private func readIntegers() -> [Int] {
        readLine()!.split(separator: " ").map {
            Int($0)!
        }
    }
    
    func solution() {
        let droid = Droid()
        let testcase = readInteger()
        
        for _ in 1...testcase {
            let input = readIntegers()
            let result = droid.price(input[0], input[1], input[2], input[3], input[4])
            print(result)
        }
    }
}

Solution().solution()
