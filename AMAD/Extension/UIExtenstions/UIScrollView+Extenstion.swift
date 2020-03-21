import Foundation
import UIKit
extension UIScrollView{
    public func setContentHeight(){
        var viewHight:CGFloat = CGFloat(0)
        for subView in self.subviews{ viewHight += subView.frame.size.height }
        viewHight += 100
        self.contentSize = CGSize(width: self.frame.size.width , height: viewHight)
    }
}
