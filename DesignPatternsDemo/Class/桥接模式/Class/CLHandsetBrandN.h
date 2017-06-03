//
//  CLHandsetBrandN.h
//  DesignPatternsDemo
//
//  Created by Apple on 2017/4/26.
//  Copyright © 2017年 chilim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLHandSetBrand.h"
#import "CLHandSetSoft.h"

@interface CLHandsetBrandN : NSObject<CLHandSetBrand>

- (instancetype)initWithSoft:(id<CLHandSetSoft>)soft;

@end
