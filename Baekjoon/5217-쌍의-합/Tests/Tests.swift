import XCTest

// 1보다 크고 12보다 작다.

final class Tests: XCTestCase {
    private let sut = Solution()
    
    func test_2더하기3은_5다() {
        let result = sut.add(2, 3)
        
        XCTAssertEqual(result, 5)
    }
    
    func test_2더하기4는_6이다() {
        let result = sut.add(2, 4)
        
        XCTAssertEqual(result, 6)
    }
    
    func test_1이_주어졌을때_nil이_나온다() {
        let result = sut.solve(1)
        
        XCTAssertEqual(result, [[nil]])
    }
    
    func test_2가_주어졌을때_nil이_나온다() {
        let result = sut.solve(2)
        
        XCTAssertEqual(result, [[nil]])
    }
    
    func test_3이_주어졌을때_1_2가_나온다() {
        let result = sut.solve(3)
        
        XCTAssertEqual(result, [[1, 2]])
    }
    
    func test_5이_주어졌을때_1_4_2_3가_나온다() {
        let result = sut.solve(5)
        
        XCTAssertEqual(result, [[1, 4], [2, 3]])
    }
    
    func test_6이_주어졌을때_1_5_2_4가_나온다() {
        let result = sut.solve(6)
        
        XCTAssertEqual(result, [[1, 5], [2, 4]])
    }
    
    func test_7이_주어졌을때_1_6_2_5_3_4가_나온다() {
        let result = sut.solve(7)
        
        XCTAssertEqual(result, [[1, 6], [2, 5], [3, 4]])
    }
}
