//
//  MallUrlJumpManager.h
//  taobaoTmallJd
//
//  Created by quy21 on 2019/2/21.
//  Copyright © 2019 quy21. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MallUrlJumpManager : NSObject

// 跳转天猫商品
+ (void)jumpTmallProduct:(NSString *)itemId;

// 跳转淘宝商品
+ (void)jumpTaobaoProduct:(NSString *)itemId;

// 跳转京东商品
+ (void)jumpJdProduct:(NSString *)itemId;

// 跳转天猫店铺
+ (void)jumpTmallStore:(NSString *)itemId;

// 跳转淘宝店铺
+ (void)jumpTaobaoStore:(NSString *)itemId;

// 跳转京东店铺
+ (void)jumpJdStore:(NSString *)itemId;



@end
