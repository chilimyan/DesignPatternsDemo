//
//  CLCommonTool.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/20.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, CalculateType){
    AddCalculateType = 0,
    MinusCalculateType,
    MultipyCalculateType,
    DivideCalculateType
};

@interface CLCommonTool : NSObject

@end
