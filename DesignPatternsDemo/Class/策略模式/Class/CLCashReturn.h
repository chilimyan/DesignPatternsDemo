//
//  CLCashReturn.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//返利收费子类

#import <Foundation/Foundation.h>
#import "CLCashSuper.h"

@interface CLCashReturn : NSObject<CLCashSuper>

- (instancetype)initWithMoneyCondition:(CGFloat)moneyCondition moneyReturn:(CGFloat)moneyReturn;

@end
