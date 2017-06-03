//
//  CLPlayer.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/24.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CLPlayer : NSObject

@property (nonatomic, copy) NSString *name;

- (void)attack;
- (void)defense;
- (instancetype)initWithName:(NSString *)name;

@end
