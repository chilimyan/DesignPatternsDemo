//
//  CLConcreteAggregate.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLAggregate.h"

@interface CLConcreteAggregate : CLAggregate

- (void)addObject:(id)object;
- (NSInteger)getCount;
- (id)indexOfObject:(NSInteger)index;

@end
