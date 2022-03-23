//: # [               􀄪   ](@previous)
/*:
 ## V02-13
 ## Shifting from initializer injection to property injection
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



let vc = FeedVC(loader: RemoteFeedLoader())
let vc2 = FeedVC(loader: LocalFeedLoader())
let vc3 = RemoteWithLocalFallbackFeedLoader(remote: RemoteFeedLoader(),
                                            local: LocalFeedLoader())

// 00:16:47
let vc4 = FeedVC()
vc4.loader = RemoteWithLocalFallbackFeedLoader(remote: RemoteFeedLoader(),
                                               local: LocalFeedLoader())

//: # [               􀄪   ](@previous)
