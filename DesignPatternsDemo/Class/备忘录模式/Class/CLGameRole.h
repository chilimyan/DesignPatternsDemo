//
//  CLGameRole.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/24.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLRoleStateMemo;
@interface CLGameRole : NSObject

- (void)getState;

- (void)fightBoss;

- (CLRoleStateMemo *)saveStateMemo;

- (void)recoveryState:(CLRoleStateMemo *)stateMemo;

@end
