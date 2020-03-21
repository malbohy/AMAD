
import Foundation
import UIKit
extension UINavigationController {
    static func getViewController(fromStoryBoardNamed storyBoardName:String , withIdentifier id:String )-> UIViewController{
        return UIStoryboard.init(name: storyBoardName, bundle: Bundle.main).instantiateViewController(withIdentifier: id)
    }
}
