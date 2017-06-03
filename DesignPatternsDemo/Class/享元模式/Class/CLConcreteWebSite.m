//
//  CLConcreteWebSite.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLConcreteWebSite.h"
#import "CLShareUser.h"

@implementation CLConcreteWebSite

- (void)use:(CLShareUser *)user{
    NSLog(@"网站分类:%@,用户:%@",self.webName,user.name);
}

@end
