//
//  RNBundlePlugin.m
//  RNBundlePlugin
//
//  Created by Nevo on 2019/2/15.
//  Copyright © 2019 Nevo. All rights reserved.
//
#import <React/RCTLog.h>
#import <React/RCTConvert.h>

#import "RNBundlePlugin.h"

@implementation RNBundlePlugin

NSString* mName;

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(share:(NSArray *)shareArray shareWithResolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {
    NSStringArray* strArray = [RCTConvert NSStringArray:shareArray];
    
    resolve(@"test");
}
@end
