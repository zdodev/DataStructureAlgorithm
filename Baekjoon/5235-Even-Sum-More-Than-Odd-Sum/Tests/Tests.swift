import XCTest

class Tests: XCTestCase {
    private let sut = Solution()
    
    func test_배열의_짝수_연산_시_합은_짝수의_합이다1() {
        let result = sut.sumOfEvenNumbers([8, 5, 7, 2, 1, 10, 13, 6, 12])
        let expectedValue = 2 + 10 + 6 + 12
        
        XCTAssertEqual(result, expectedValue)
    }
    
    func test_배열의_짝수_연산_시_합은_짝수의_합이다2() {
        let result = sut.sumOfEvenNumbers([8, 6, 8, 3, 2, 12, 14, 7, 13])
        let expectedValue = 6 + 8 + 2 + 12 + 14
        
        XCTAssertEqual(result, expectedValue)
    }
    
    func test_배열의_홀수_연산_시_합은_홀수의_합이다1() {
        let result = sut.sumOfOddNumbers([8, 5, 7, 2, 1, 10, 13, 6, 12])
        let expectedValue = 5 + 7 + 1 + 13
        
        XCTAssertEqual(result, expectedValue)
    }
    
    func test_배열의_홀수_연산_시_합은_홀수의_합이다2() {
        let result = sut.sumOfOddNumbers([8, 3, 7, 3, 9, 13, 17, 8, 5])
        let expectedValue = 3 + 7 + 3 + 9 + 13 + 17 + 5

        XCTAssertEqual(result, expectedValue)
    }
    
    func test_짝수의_합이_더_큰_배열을_입력하면_EVEN이_출력된다() {
        let result = sut.solution([8, 5, 7, 2, 1, 10, 13, 6, 12])
        let expectedValue = "EVEN"
        
        XCTAssertEqual(result, expectedValue)
    }
    
    func test_홀수의_합이_더_큰_배열을_입력하면_ODD이_출력된다() {
        let result = sut.solution([4, 5, 2, 3, 4])
        let expectedValue = "ODD"
        
        XCTAssertEqual(result, expectedValue)
    }
    
    func test_짝수와_홀수의_합이_같은_배열을_입력하면_TIE이_출력된다() {
        let result = sut.solution([6, 1, 1, 2, 3, 5, 8])
        let expectedValue = "TIE"
        
        XCTAssertEqual(result, expectedValue)
    }
}
