//
//  CLRoleStateManager.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/24.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLRoleStateManager.h"

@implementation CLRoleStateManager

- (instancetype)initWithState:(CLRoleStateMemo *)stateMemo{
    if (self = [super init]) {
        _roleState = stateMemo;
    }
    return self;
}

@end
