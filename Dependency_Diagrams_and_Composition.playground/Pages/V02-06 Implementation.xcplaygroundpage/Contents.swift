//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)
/*:
## V02-06
## Implementation
---
*/
//: ![Inheritance](V02-01-04-Implementation-b.png)

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



// 00:07:49
class RemoteFeedLoader: FeedLoader {
  func loadFeed(completion: @escaping ([String]) -> Void) {
    // do something
  }
}


class LocalFeedLoader: FeedLoader {
  func loadFeed(completion: @escaping ([String]) -> Void) {
    // do something
  }
}

//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)

