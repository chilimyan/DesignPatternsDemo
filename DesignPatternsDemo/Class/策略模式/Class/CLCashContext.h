//
//  CLCashContext.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLCashSuper.h"

typedef NS_ENUM(NSInteger, CLCashType){
    CLCashTypeNormal = 0,
    CLCashTypeRobate,
    CLCashTypeReturn
};

@interface CLCashContext : NSObject

-(instancetype)initWithCashSuper:(id<CLCashSuper>)cashBase;

-(instancetype)initWithCashType:(CLCashType)type;

-(CGFloat)getResult:(CGFloat)money;

@end
