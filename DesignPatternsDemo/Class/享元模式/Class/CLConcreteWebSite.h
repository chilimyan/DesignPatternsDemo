//
//  CLConcreteWebSite.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/30.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLWebSite.h"

@interface CLConcreteWebSite : NSObject<CLWebSite>

@property (nonatomic, copy) NSString *webName;

@end
