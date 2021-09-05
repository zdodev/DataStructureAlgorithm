import XCTest

class Tests: XCTestCase {
    var sut: Solution!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Solution()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func test_뺄셈_한바퀴() {
        let input = [1, 3, 5, 9]
        
        let result = sut.subtraction(input)
        
        let expectedValue = [2, 2, 4, 8]
        
        XCTAssertEqual(result, expectedValue)
    }
    
    func test_네_숫자가_동일한지() {
        let input = [2, 2, 2, 2]
        
        let result = sut.isEqualArrayElement(input)
        
        let expectedValue = true
        
        XCTAssertEqual(result, expectedValue)
    }
    
    func test_네_숫자가_동일하지_않은지() {
        let input = [2, 2, 2, 3]
        
        let result = sut.isEqualArrayElement(input)
        
        let expectedValue = false
        
        XCTAssertEqual(result, expectedValue)
    }
}
