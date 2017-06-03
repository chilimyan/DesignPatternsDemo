//
//  CLConcreateIterator.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLIterator.h"

@class CLConcreteAggregate;
@interface CLConcreateIterator : NSObject<CLIterator>

- (instancetype)initWithConcreteAggreate:(CLConcreteAggregate *)concreteAggreate;

@end
