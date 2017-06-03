//
//  CLMultiplyCalculate.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLMultiplyCalculate.h"

@implementation CLMultiplyCalculate

@synthesize numberA = _numberA;
@synthesize numberB = _numberB;

-(CGFloat)calculate{
    return self.numberA * self.numberB;
}

@end
