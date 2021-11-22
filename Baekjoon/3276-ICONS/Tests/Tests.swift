import XCTest

class Tests: XCTestCase {
    let sut = Solution()
    
    func test_2를_입력하면_1_2가_나온다() {
        let input = 2
        let result = sut.calculate(input)
        
        let expectedValue = [2, 1]
        
        XCTAssertEqual(result, expectedValue)
    }
    
    func test_5를_입력하면_3_2가_나온다() {
        let input = 5
        let result = sut.calculate(input)
        
        let expectedValue = [3, 2]
        
        XCTAssertEqual(result, expectedValue)
    }
    
    func test_14를_입력하면_4_4가_나온다() {
        let input = 14
        let result = sut.calculate(input)
        
        let expectedValue = [4, 4]
        
        XCTAssertEqual(result, expectedValue)
    }
    
    func test_100을_입력하면_10_10이_나온다() {
        let input = 100
        let result = sut.calculate(input)
        
        let expectedValue = [10, 10]
        
        XCTAssertEqual(result, expectedValue)
    }
}
