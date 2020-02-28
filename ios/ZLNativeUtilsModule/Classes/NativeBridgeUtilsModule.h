//
//  NativeBridgeUtilsModule.h
//  NativeUtilsModule
//
//  Created by hua on 2020/2/27.
//  Copyright © 2020 hua. All rights reserved.
//

//#import "RCTEventEmitter.h"
//#if __has_include(<React/RCTBridgeModule.h>)
//#import <React/RCTBridgeModule.h>
//#else // Compatibility for RN version < 0.40
//#import "RCTBridgeModule.h"
//#endif
#import <React/RCTBridgeModule.h>

NS_ASSUME_NONNULL_BEGIN

@interface NativeBridgeUtilsModule : NSObject<RCTBridgeModule>

@end

NS_ASSUME_NONNULL_END
