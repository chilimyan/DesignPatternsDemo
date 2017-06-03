//
//  CLCountry.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/27.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLUnitedNations;
@interface CLCountry : NSObject

@property (nonatomic, strong) CLUnitedNations *mediator;

- (instancetype)initWith:(CLUnitedNations *)mediator;

@end
