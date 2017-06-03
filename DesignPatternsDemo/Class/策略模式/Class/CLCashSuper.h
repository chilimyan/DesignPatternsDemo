//
//  CLCashSuper.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/21.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CLCashSuper <NSObject>

-(CGFloat)acceptCash:(CGFloat)cash;

@end
