//
//  CLAggregate.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLIterator.h"

@interface CLAggregate : NSObject

- (id<CLIterator>)createIterator;

@end
