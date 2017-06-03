//
//  CLNBAObserver.m
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import "CLNBAObserver.h"
#import "CLSubject.h"

@implementation CLNBAObserver

- (instancetype)initWithSubject:(CLSubject *)subject name:(NSString *)name{
    if (self = [super initWithSubject:subject name:name]) {
        
    }
    return self;
}

- (void)update{
    NSLog(@"%@", [NSString stringWithFormat:@"%@,%@关闭NBA直播，继续工作!",self.subject.name,super.name]);
}


@end
