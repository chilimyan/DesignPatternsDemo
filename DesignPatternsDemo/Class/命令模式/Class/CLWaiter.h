//
//  CLWaiter.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLCommand;
@interface CLWaiter : NSObject

- (void)setOrder:(CLCommand *)command;

- (void)cancelOrder:(CLCommand *)command;

- (void)notify;

@end
