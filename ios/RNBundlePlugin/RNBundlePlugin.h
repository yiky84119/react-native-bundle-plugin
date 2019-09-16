//
//  RNBundlePlugin.h
//  RNBundlePlugin
//
//  Created by Nevo on 2019/2/15.
//  Copyright © 2019 Nevo. All rights reserved.
//

#import <Foundation/Foundation.h>
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

@interface RNBundlePlugin : NSObject<RCTBridgeModule>
@property (nonatomic, strong) UINavigationController *mUINavigationController;
@property (nonatomic, strong) RCTResponseSenderBlock mCallback;

@end
