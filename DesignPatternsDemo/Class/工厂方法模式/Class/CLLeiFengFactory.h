//
//  CLLeiFengFactory.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/22.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLLeiFeng.h"

@protocol CLLeiFengFactory <NSObject>

//雷锋工厂
- (id<CLLeiFeng>)creatLeiFeng;

@end
