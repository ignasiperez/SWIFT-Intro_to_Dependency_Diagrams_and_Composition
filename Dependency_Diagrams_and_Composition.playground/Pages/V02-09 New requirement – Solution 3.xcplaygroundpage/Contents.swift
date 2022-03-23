//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)
/*:
 ## V02-09
 ## New requirement – Solution 3
---
*/
//: ![Inheritance](V02-01-06-New_requirement-Solution_3.png)

import UIKit


protocol FeedLoader {
  func loadFeed(completion: @escaping ([String]) -> Void)
}


struct Reachability {
  static var networkAvailable = false
}


// 00:12:09
class RemoteWithLocalFallbackFeedLoader: FeedLoader {
  let remote: RemoteFeedLoader
  let local: LocalFeedLoader
  
  init(remote: RemoteFeedLoader,
       local: LocalFeedLoader) {
    self.remote = remote
    self.local = local
  }
  
  func loadFeed(completion: @escaping ([String]) -> Void) {
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
    
  } // func loadFeed
  
} // class RemoteWithLocalFallbackFeedService



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

