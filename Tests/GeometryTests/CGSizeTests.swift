//  Created by Greg Harris on 7/5/20.

import XCTest
@testable import Geometry

final class CGSizeTests: XCTestCase {

    func testCenteredIn() {
        let origin1 = CGPoint(x: 0, y: 0)
        let origin2 = CGPoint(x: 25, y: 25)
        let origin3 = CGPoint(x: -25, y: -25)

        let size1 = CGSize(width: 100, height: 100)
        let size2 = CGSize(width: 50, height: 50)

        let rect1 = CGRect(origin: origin1, size: size1)
        let rect2 = CGRect(origin: origin1, size: size2)

        XCTAssertEqual(size2.centered(in: rect1), CGRect(origin: origin2, size: rect2.size))
        XCTAssertEqual(size1.centered(in: rect2), CGRect(origin: origin3, size: rect1.size))

        XCTAssertEqual(size1.centered(in: rect1), rect1)
    }

    static var allTests = [
        ("testCenteredIn", testCenteredIn),
    ]
}
