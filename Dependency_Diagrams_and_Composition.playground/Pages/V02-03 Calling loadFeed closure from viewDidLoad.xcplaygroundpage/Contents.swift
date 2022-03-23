//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)
/*:
## V02-03
## Calling loadFeed closure from viewDidLoad
---
*/

import UIKit


class FeedVC: UIViewController {
  var loadFeed: ((([String]) -> Void) -> Void)!
  
  convenience init(
    loadFeed: @escaping (([String]) -> Void)
    -> Void) {
      self.init()
      self.loadFeed = loadFeed
    }
  
  
  // 00:04:26
  override func viewDidLoad() {
    super.viewDidLoad()
    
    loadFeed { loadItems in
      // Update UI
    }
  }
  
}

//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)

