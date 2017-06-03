//
//  CLCalculateFactory.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLCalculate.h"

@class CLCommonTool;
@interface CLCalculateFactory : NSObject

+ (id <CLCalculate>)creatCalculate:(NSString *)calculateType;

@end
