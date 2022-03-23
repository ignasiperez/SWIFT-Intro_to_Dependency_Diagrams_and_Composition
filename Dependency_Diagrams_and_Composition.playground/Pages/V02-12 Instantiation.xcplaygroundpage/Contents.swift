//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)
/*:
 ## V02-12
 ## Instantiation
---
*/

import UIKit


protocol FeedLoader {
  func loadFeed(completion: @escaping ([String]) -> Void)
}


struct Reachability {
  static var networkAvailable = false
}


class RemoteWithLocalFallbackFeedLoader: FeedLoader {
  let remote: RemoteFeedLoader
  let local: LocalFeedLoader
  
  init(remote: RemoteFeedLoader,
       local: LocalFeedLoader) {
    self.remote = remote
    self.local = local
  }
  
  func loadFeed(completion: @escaping ([String]) -> Void) {
    let load = Reachability.networkAvailable ?
    remote.loadFeed : local.loadFeed
    load(completion)
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


// 00:15:48
let vc = FeedVC(loader: RemoteFeedLoader())
let vc2 = FeedVC(loader: LocalFeedLoader())
let vc3 = RemoteWithLocalFallbackFeedLoader(remote: RemoteFeedLoader(),
                                            local: LocalFeedLoader())

//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)

