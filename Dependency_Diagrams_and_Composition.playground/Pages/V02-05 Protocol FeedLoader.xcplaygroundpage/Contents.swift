//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)
/*:
 ## V02-05
 ## Protocol FeedLoader
 ---
 */

import UIKit

// 00:05:39
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

//: # [               􀄪   ](@previous) [   􀙋   ](_Cover%20page) [   􀄫](@next)

