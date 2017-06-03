//
//  CLUser.h
//  DesignPatternsDemo
//
//  Created by chilim on 2017/4/23.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@protocol CLUser <NSObject>

-(void)insertUser:(User *)user;
-(User *)getUser;

@end
