import Foundation

struct Solution {
    private func readDoubles() -> [Double] {
        readLine()!.split(separator: " ").map {
            Double($0)!
        }
    }
    
    func solution() {
        var input = readDoubles()
        var ta = input[0]
        var tb = input[1]
        let light = 299_792_458
        var y = tb / ta
        
        while ta != 0 && tb != 0 {
            let expoLight = light * light
            let expoY = y * y
            
            let v = sqrt(Double(expoLight) * (1 - expoY))
            let speed = v / Double(light)
            print(String(format: "%.3f", speed))
            
            input = readDoubles()
            ta = input[0]
            tb = input[1]
            y = tb / ta
        }
    }
}

Solution().solution()
