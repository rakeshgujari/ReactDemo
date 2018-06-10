//
//  ReactManagerBridge.m
//  ReactDemo
//
//  Created by Rakesh Gujari on 10/06/18.
//  Copyright © 2018 Rakesh Gujari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(ReactManager, NSObject)

RCT_EXTERN_METHOD(saveNGoBack: (NSString *) value)

@end
