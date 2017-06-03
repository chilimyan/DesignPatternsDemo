//
//  CLRoleStateManager.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/24.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLRoleStateMemo;
@interface CLRoleStateManager : NSObject

@property (nonatomic, strong)CLRoleStateMemo *roleState;

- (instancetype)initWithState:(CLRoleStateMemo *)stateMemo;

@end
