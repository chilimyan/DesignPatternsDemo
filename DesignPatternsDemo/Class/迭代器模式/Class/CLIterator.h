//
//  CLIterator.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CLIterator <NSObject>

- (id)first;
- (id)next;
- (BOOL)isDone;
- (id) currentItem;

@end
