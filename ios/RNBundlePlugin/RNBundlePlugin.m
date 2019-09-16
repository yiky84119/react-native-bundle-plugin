//
//  RNBundlePlugin.m
//  RNBundlePlugin
//
//  Created by Nevo on 2019/2/15.
//  Copyright © 2019 Nevo. All rights reserved.
//
#import <React/RCTLog.h>
#import <React/RCTConvert.h>
#import <React/RCTRootView.h>

#import "RNBundlePluginManager.h"
#import "RNBundlePlugin.h"

@implementation RNBundlePlugin

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(load:(NSString *)bundleURL moduleName:(NSString *)moduleName
                  initialProperties:(NSDictionary *)props
                  launchOptions:(NSDictionary *)options callback:(RCTResponseSenderBlock)callback) {
    dispatch_async(dispatch_get_main_queue(), ^{
        RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:[NSURL URLWithString:bundleURL]
                                                            moduleName:moduleName
                                                     initialProperties:props
                                                         launchOptions:options];
        self.mUINavigationController = [[UINavigationController alloc] init];
        self.mUINavigationController.view = rootView;
        self.mCallback = callback;
        
        [RNBundlePluginManager shareInstance].plugin = self;
       
        [[UIApplication sharedApplication].delegate.window.rootViewController presentViewController: self.mUINavigationController animated: NO completion: nil];
    });
}

RCT_EXPORT_METHOD(unload:(NSDictionary *)props) {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (![RNBundlePluginManager shareInstance].plugin.mUINavigationController) {
            if ([RNBundlePluginManager shareInstance].plugin.mCallback) {
                [RNBundlePluginManager shareInstance].plugin.mCallback(props ? @[props] : nil);
            }
        }
        [[RNBundlePluginManager shareInstance].plugin.mUINavigationController dismissViewControllerAnimated: NO completion: ^{
            if ([RNBundlePluginManager shareInstance].plugin.mCallback) {
                [RNBundlePluginManager shareInstance].plugin.mCallback(props ? @[props] : nil);
            }
        }];
    });
}
@end
