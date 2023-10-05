//
//  Counter.m
//  CounterApp
//
//  Created by Muqeem Ahmad on 05/10/23.
//

#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"
@interface RCT_EXTERN_MODULE(Counter, RCTEventEmitter)

RCT_EXTERN_METHOD(increment)
_RCT_EXTERN_REMAP_METHOD(inc, increment, false)
RCT_EXTERN_METHOD(getCount: (RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(
  decrement: (RCTPromiseResolveBlock)resolve
  rejecter: (RCTPromiseRejectBlock)reject
)
@end
