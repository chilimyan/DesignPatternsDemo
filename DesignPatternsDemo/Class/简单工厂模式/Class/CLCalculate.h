//
//  CLCalculate.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/20.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CLCalculate <NSObject>

@property(nonatomic, assign)CGFloat numberA;
@property(nonatomic, assign)CGFloat numberB;

-(CGFloat)calculate;

@end
