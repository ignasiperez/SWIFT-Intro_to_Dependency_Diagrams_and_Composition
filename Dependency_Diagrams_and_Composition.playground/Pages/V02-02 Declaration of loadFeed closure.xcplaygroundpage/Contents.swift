//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)
/*:
 ## V02-02
 ## Declaration of loadFeed closure
 ---
 */
//: ![Inheritance](V02-01-02-FeedLoader.png)

import UIKit


// 00:04:06

class FeedVC: UIViewController {
  var loadFeed: ((([String]) -> Void) -> Void)!
  
  convenience init(
    loadFeed: @escaping (([String]) -> Void)
    -> Void) {
      self.init()
      self.loadFeed = loadFeed
    }
  
}

//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)

