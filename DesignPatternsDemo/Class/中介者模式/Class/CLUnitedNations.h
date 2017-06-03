//
//  CLUnitedNations.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/27.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLCountry;
@interface CLUnitedNations : NSObject

- (void)declareWithMessage:(NSString *)message colleague:(CLCountry *)colleague;

@end
