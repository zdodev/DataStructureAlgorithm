import XCTest

class Tests: XCTestCase {
    let sut = Droid()
    
    func test_첫번째_드로이드의_가격은_$13987_50이다() {
        let result = sut.price(20, 10, 14, 3, 9)
        let expectedValue = "$13987.50"
        
        XCTAssertEqual(result, expectedValue)
    }
    
    func test_두번째_드로이드의_가격은_13987_50이다() {
        let result = sut.price(19, 17, 12, 8, 10)
        let expectedValue = "$15679.76"
        
        XCTAssertEqual(result, expectedValue)
    }
}
