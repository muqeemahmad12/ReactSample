
import Foundation

@objc(AdViewManager)
class AdViewManager: RCTViewManager {
  
  override func view() -> UIView! {
    return AdSampleView()
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }

}
