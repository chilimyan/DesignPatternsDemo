//
//  CLState.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLWork;
@protocol CLState <NSObject>

- (void)writeProgram:(CLWork *)work;

@end
