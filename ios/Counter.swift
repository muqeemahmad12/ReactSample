//
//  Counter.swift
//  CounterApp
//
//  Created by Muqeem Ahmad on 05/10/23.
//

// Counter.swift
import Foundation
@objc(Counter)
class Counter: RCTEventEmitter {
  
  private var count = 0
  @objc
  func increment() {
    count += 1
    print("count is \(count)")
    sendEvent(withName: "onIncrement", body: ["count": count])
  }
  
  // we need to override this method and
  // return an array of event names that we can listen to
  override func supportedEvents() -> [String]! {
    return ["onIncrement"]
  }
  
  @objc
  override func constantsToExport() -> [AnyHashable : Any]! {
    return [
          "number": 123.9,
          "string": "foo",
          "boolean": true,
          "array": [1, 22.2, "33"] as [Any],
          "object": ["a": 1, "b": 2]
        ]
  }
  
  @objc
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc
  func getCount(_ callback: RCTResponseSenderBlock) {
    callback([
      count,               // variable
      123.9,               // int or float
      "third argument",    // string
      [1, 2.2, "3"] as [Any],       // array
      ["a": 1, "b": 2]     // object
    ])
    
  }
  
  @objc
    func decrement(
      _ resolve: RCTPromiseResolveBlock,
      rejecter reject: RCTPromiseRejectBlock
    ) -> Void {
      if (count == 0) {
        let error = NSError(domain: "", code: 200, userInfo: nil)
        reject("E_COUNT", "count cannot be negative", error)
      } else {
        count -= 1
        resolve("count was decremented")
      }
    }
  
}
