//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)
/*:
## V02-07
## New requierement – Solution 1
---
*/

import UIKit


protocol FeedLoader {
  func loadFeed(completion: @escaping ([String]) -> Void)
}


class FeedVC: UIViewController {
  var loader: FeedLoader!
  
  convenience init(loader: FeedLoader) {
    self.init()
    self.loader = loader
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    loader.loadFeed { loadItems  in
      // Update UI
    }
  }

}



// 00:09:55
class RemoteFeedLoader: FeedLoader {
  func loadFeed(completion: @escaping ([String]) -> Void) {
    // Logic in the RemoteFeedLoader to discern between remote or local connection
  }
}

//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)

