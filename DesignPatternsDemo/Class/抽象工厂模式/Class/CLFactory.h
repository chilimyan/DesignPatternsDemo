//
//  CLFactory.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLUser.h"
#import "CLDepartment.h"

@protocol CLFactory <NSObject>

- (id<CLUser>)createUser;
- (id<CLDepartment>)createDepartment;

@end
