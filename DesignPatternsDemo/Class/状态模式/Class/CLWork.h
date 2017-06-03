//
//  CLWork.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CLState.h"

@interface CLWork : NSObject

@property (nonatomic, assign)CGFloat hour;
@property (nonatomic, strong)id<CLState> state;
@property (nonatomic, assign)BOOL finish;

- (void)writeProgram;

@end
