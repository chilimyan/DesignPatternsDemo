//
//  CLMinusCalculate.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLMinusCalculate.h"

@implementation CLMinusCalculate

@synthesize numberA = _numberA;
@synthesize numberB = _numberB;

-(CGFloat)calculate{
    return self.numberA - self.numberB;
}

@end
