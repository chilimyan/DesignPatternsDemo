//
//  CLAction.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLMan.h"
#import "CLWoman.h"

@interface CLAction : NSObject

- (void)getManConclusion:(CLMan *)man;

- (void)getWomanConclusion:(CLWoman *)woman;

@end
