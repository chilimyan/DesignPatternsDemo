//
//  CLSuccess.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLSuccess.h"
#import "CLMan.h"
#import "CLWoman.h"
@implementation CLSuccess

- (instancetype)init{
    if (self = [super init]) {
        self.name = @"成功";
    }
    return self;
}

- (void)getManConclusion:(CLMan *)man{
    NSLog(@"%@%@时，背后多半有一个伟大的女人。",man.name,self.name);
}

- (void)getWomanConclusion:(CLWoman *)woman{
    NSLog(@"%@%@时，背后多半有一个不成功的男人。",woman.name,self.name);
}

@end
