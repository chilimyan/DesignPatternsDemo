//
//  CLFailing.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLFailing.h"

@implementation CLFailing

- (instancetype)init{
    if (self = [super init]) {
        self.name = @"失败";
    }
    return self;
}

- (void)getManConclusion:(CLMan *)man{
    NSLog(@"%@%@时，闷头喝酒，谁也不用劝。",man.name,self.name);
}

- (void)getWomanConclusion:(CLWoman *)woman{
    NSLog(@"%@%@时，眼泪汪汪，谁也劝不了。",woman.name,self.name);
}


@end
