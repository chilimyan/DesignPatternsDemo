//
//  CLWebSite.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLShareUser.h"

@protocol CLWebSite <NSObject>

- (void)use:(CLShareUser *)user;

@end
