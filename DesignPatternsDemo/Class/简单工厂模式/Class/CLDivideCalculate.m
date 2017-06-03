//
//  CLDivideCalculate.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLDivideCalculate.h"

@implementation CLDivideCalculate

@synthesize numberA = _numberA;
@synthesize numberB = _numberB;

-(CGFloat)calculate{
    if (self.numberB == 0) {
        return 0;
    }
    return self.numberA / self.numberB;
}


@end
