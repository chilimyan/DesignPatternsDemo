//
//  CLRequest.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, RequestType){
    RequestLeaveType = 0,//请假
    RequestRaisesType//加薪
};

@interface CLRequest : NSObject

@property (nonatomic, assign) NSInteger number;
@property (nonatomic, copy) NSString *requestContent;
@property (nonatomic, assign) RequestType requestType;

@end
