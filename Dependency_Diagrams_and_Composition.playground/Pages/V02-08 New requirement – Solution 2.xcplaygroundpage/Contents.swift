//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)
/*:
## V02-08
## New requirement – Solution 2
---
*/
//: ![Inheritance](V02-01-05-New_requirement-Solution_2.png)

import UIKit


struct Reachability {
  static var networkAvailable = false
}


class FeedVC: UIViewController {
  var remote: RemoteFeedLoader!
  var local: LocalFeedLoader!
  
  convenience init(remote: RemoteFeedLoader,
                   local : LocalFeedLoader) {
    self.init()
    
    self.remote = remote
    self.local = local
  }
  
  // 00:10:45
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if Reachability.networkAvailable {
      remote.loadFeed { loadedItem in
        // do something
      }
    }
    else  {
      local.loadFeed { loadedItem in
        // do something
      }
    }
    
  }  // viewDidLoad

}



class RemoteFeedLoader {
  func loadFeed(completion: @escaping ([String]) -> Void) {
    // do something
  }
}


class LocalFeedLoader {
  func loadFeed(completion: @escaping ([String]) -> Void) {
    // do something
  }
}

//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)

