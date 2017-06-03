//
//  CLCashRebate.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//打折收费子类

#import <Foundation/Foundation.h>
#import "CLCashSuper.h"

@interface CLCashRebate : NSObject<CLCashSuper>

- (instancetype)initWithMoneyRebate:(CGFloat)moneyRebate;

@end
