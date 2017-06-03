//
//  CLCashRebate.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLCashRebate.h"

@interface CLCashRebate ()

@property (nonatomic, assign) CGFloat moneyRebate;

@end

@implementation CLCashRebate

- (instancetype)initWithMoneyRebate:(CGFloat)moneyRebate{
    if (self = [super init]) {
        _moneyRebate = moneyRebate;
    }
    return self;
}

-(CGFloat)acceptCash:(CGFloat)cash{
    return cash * _moneyRebate;
}

@end
