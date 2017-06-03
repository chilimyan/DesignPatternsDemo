//
//  CLGameRole.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/24.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLGameRole.h"
#import "CLRoleStateMemo.h"

@interface CLGameRole ()

@property (nonatomic, assign) NSInteger life;
@property (nonatomic, assign) NSInteger attack;
@property (nonatomic, assign) NSInteger def;

@end

@implementation CLGameRole

- (instancetype)init{
    if (self = [super init]) {
        _life = 100;
        _attack = 100;
        _def = 100;
    }
    return self;
}

- (void)getState{
    NSLog(@"生命力%ld,防御力%ld,攻击力%ld",_life,_def,_attack);
}

- (CLRoleStateMemo *)saveStateMemo{
    CLRoleStateMemo *stateMemo = [[CLRoleStateMemo alloc] init];
    stateMemo.life = _life;
    stateMemo.attack = _attack;
    stateMemo.def = _def;
    return stateMemo;
}

- (void)recoveryState:(CLRoleStateMemo *)stateMemo{
    _life = stateMemo.life;
    _attack = stateMemo.attack;
    _def = stateMemo.def;
}

- (void)fightBoss{
    _life = 0;
    _attack = 0;
    _def = 0;
}

@end
