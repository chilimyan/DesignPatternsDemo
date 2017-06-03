//
//  CLObserver.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLSubject;
@interface CLObserver : NSObject

@property (nonatomic, strong)CLSubject *subject;
@property (nonatomic, copy)NSString *name;

- (instancetype)initWithSubject:(CLSubject *)subject name:(NSString *)name;

- (void)update;

@end
