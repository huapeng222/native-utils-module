//
//  NativeBridgeUtilsModule.m
//  NativeUtilsModule
//
//  Created by hua on 2020/2/27.
//  Copyright © 2020 hua. All rights reserved.
//

#import "NativeBridgeUtilsModule.h"

@implementation NativeBridgeUtilsModule
RCT_EXPORT_MODULE();

#pragma mark - app相关
RCT_REMAP_METHOD(getAppVersion,
                 getAppVersion:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject){
  NSString *version = [[NSBundle mainBundle] infoDictionary][@"CFBundleShortVersionString"];
  NSString *buildVersion = [[NSBundle mainBundle] infoDictionary][@"CFBundleVersion"];
  resolve(@{@"version":version,@"buildVersion":buildVersion});
}

#pragma mark - 通知方法
- (NSArray<NSString *> *)supportedEvents {
    return @[];
}
@end
