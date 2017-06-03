//
//  CLHandsetBrandM.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLHandSetSoft.h"
#import "CLHandSetBrand.h"

@interface CLHandsetBrandM : NSObject<CLHandSetBrand>

- (instancetype)initWithSoft:(id<CLHandSetSoft>)soft;

@end
