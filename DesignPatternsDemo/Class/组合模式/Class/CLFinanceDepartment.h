//
//  CLFinanceDepartment.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/25.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLCompany.h"

@interface CLFinanceDepartment : NSObject<CLCompany>

@property (nonatomic, copy) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end
