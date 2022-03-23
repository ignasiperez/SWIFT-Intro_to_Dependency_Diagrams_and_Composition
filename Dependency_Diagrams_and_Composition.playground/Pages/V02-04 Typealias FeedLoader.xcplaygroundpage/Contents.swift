//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)
/*:
## V02-04
## Typealias FeedLoader
---
*/

import UIKit

// 00:04:46
typealias FeedLoader = (([String]) -> Void) -> Void


class FeedVC: UIViewController {
  var loadFeed: FeedLoader!
  
  convenience init(loadFeed: @escaping FeedLoader) {
      self.init()
      self.loadFeed = loadFeed
    }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    loadFeed { loadItems in
      // Update UI
    }
  }
  
}

//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)

