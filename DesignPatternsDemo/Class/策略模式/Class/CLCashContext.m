//
//  CLCashContext.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLCashContext.h"
#import "CLCashReturn.h"
#import "CLCashNormal.h"
#import "CLCashRebate.h"

@interface CLCashContext ()

@property(strong,nonatomic) id<CLCashSuper> cashSuper;

@end

@implementation CLCashContext

- (instancetype)initWithCashSuper:(id<CLCashSuper>)cashBase{
    if (self = [super init]) {
        _cashSuper = cashBase;
    }
    return self;
}

-(instancetype)initWithCashType:(CLCashType)type{
    if (self = [super init]) {
        switch (type) {
            case CLCashTypeNormal://正常收费
                _cashSuper = [[CLCashNormal alloc] init];
                break;
            case CLCashTypeReturn://返利收费
                _cashSuper = [[CLCashReturn alloc] initWithMoneyCondition:100 moneyReturn:10];
                break;
            case CLCashTypeRobate://打折收费
                _cashSuper = [[CLCashRebate alloc] initWithMoneyRebate:0.8];
                break;
                
            default:
                break;
        }
    }
    return self;
}

- (CGFloat)getResult:(CGFloat)money{
    return [_cashSuper acceptCash:money];
}

@end
