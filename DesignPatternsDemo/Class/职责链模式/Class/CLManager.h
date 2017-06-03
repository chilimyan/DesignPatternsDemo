//
//  CLManager.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLRequest;
@interface CLManager : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) CLManager *superior;

- (void)setSuperior:(CLManager *)superior;
- (void)requestApplications:(CLRequest *)request;

@end
