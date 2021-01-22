import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CGRectTests.allTests),
        testCase(CGSizeTests.allTests),
    ]
}
#endif
