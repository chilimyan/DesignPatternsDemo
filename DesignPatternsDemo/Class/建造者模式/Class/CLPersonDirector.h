//
//  CLPersonDirector.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLPersonBuild.h"

@interface CLPersonDirector : NSObject

- (instancetype)initWithPersonBuild:(id<CLPersonBuild>)builder;
- (void)buildPerson;

@end
