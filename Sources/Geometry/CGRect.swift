//  Created by Greg Harris on 7/5/20.

import CoreGraphics

public extension CGRect {
    
    func centered(in rect: CGRect) -> CGRect {
        let sizeDiff = CGSize(width: self.width - rect.width,
                              height: self.height - rect.height)
        return CGRect(x: self.minX - sizeDiff.width/2,
                      y: self.minY - sizeDiff.height/2,
                      width: self.width,
                      height: self.height)
    }
    
}
