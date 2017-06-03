//
//  CLCashReturn.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLCashReturn.h"

@interface CLCashReturn ()

@property (nonatomic, assign) CGFloat moneyCondition;
@property (nonatomic, assign) CGFloat moneyReturn;

@end

@implementation CLCashReturn

- (instancetype)initWithMoneyCondition:(CGFloat)moneyCondition moneyReturn:(CGFloat)moneyReturn{
    if (self = [super init]) {
        _moneyReturn = moneyReturn;
        _moneyCondition = moneyCondition;
    }
    return self;
}

-(CGFloat)acceptCash:(CGFloat)cash{
    CGFloat result = cash;
    if (cash >= _moneyCondition) {
        result = cash - floor(cash/_moneyCondition)*_moneyReturn;
    }
    return result;
}

@end
