//
//  CLCalculateFactory.m
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLCalculateFactory.h"
#import "CLAddCalculate.h"
#import "CLMinusCalculate.h"
#import "CLMultiplyCalculate.h"
#import "CLDivideCalculate.h"
#import "CLCommonTool.h"

@implementation CLCalculateFactory

+ (id<CLCalculate>)creatCalculate:(NSString *)calculateType{
    NSArray *calculateArray = @[@"+",@"-",@"*",@"/"];
    CalculateType calType = [calculateArray indexOfObject:calculateType];
    switch (calType) {
        case AddCalculateType:
            return [[CLAddCalculate alloc] init];
            break;
        case MinusCalculateType:
            return [[CLMinusCalculate alloc] init];
            break;
        case MultipyCalculateType:
            return [[CLMultiplyCalculate alloc] init];
            break;
        case DivideCalculateType:
            return [[CLDivideCalculate alloc] init];
            break;
        default:
            return nil;
            break;
    }
}

@end
