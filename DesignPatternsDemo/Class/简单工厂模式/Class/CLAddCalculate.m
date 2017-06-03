//
//  CLAddCalculate.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/20.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLAddCalculate.h"

@implementation CLAddCalculate

@synthesize numberA = _numberA;
@synthesize numberB = _numberB;

-(CGFloat)calculate{
    return self.numberA + self.numberB;
}

@end
