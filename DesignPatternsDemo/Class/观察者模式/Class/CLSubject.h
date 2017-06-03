//
//  CLSubject.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLObserver.h"

@interface CLSubject : NSObject

@property (nonatomic, copy)NSString *name;

- (void)attach:(CLObserver *)observer;
- (void)deatach:(CLObserver *)observer;

- (void)notify;

@end
