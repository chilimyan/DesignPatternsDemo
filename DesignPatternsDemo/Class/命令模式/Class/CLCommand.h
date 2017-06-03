//
//  CLCommand.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLBarbecuer;
@interface CLCommand : NSObject

@property (nonatomic, strong)CLBarbecuer *receive;
@property (nonatomic, copy)NSString *name;//命令名称

- (instancetype)initWithBarbecuer:(CLBarbecuer *)receiver name:(NSString *)name;

- (void)excuteCommand;

@end
