//
//  RNBundlePluginManager.m
//  RNBundlePlugin
//
//  Created by Nevo on 2019/2/18.
//  Copyright © 2019 Nevo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RNBundlePluginManager.h"

@implementation RNBundlePluginManager

static RNBundlePluginManager* _instance = nil;

+(instancetype) shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    
    return _instance ;
}
@end
