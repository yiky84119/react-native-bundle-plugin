//
//  RNBundlePluginManager.h
//  RNBundlePlugin
//
//  Created by Nevo on 2019/2/18.
//  Copyright © 2019 Nevo. All rights reserved.
//

#ifndef RNBundlePluginManager_h
#define RNBundlePluginManager_h

@class RNBundlePlugin;

@interface RNBundlePluginManager : NSObject
@property (nonatomic, strong) RNBundlePlugin *plugin;

+(instancetype) shareInstance ;
@end
#endif /* RNBundlePluginManager_h */
