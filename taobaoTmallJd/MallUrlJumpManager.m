//
//  MallUrlJumpManager.m
//  taobaoTmallJd
//
//  Created by quy21 on 2019/2/21.
//  Copyright © 2019 quy21. All rights reserved.
//

#import "MallUrlJumpManager.h"
#import <UIKit/UIKit.h>

@implementation MallUrlJumpManager

+ (void)jumpTmallProduct:(NSString *)itemId
{
    NSString *productID = itemId;
    NSString *appUrl = [NSString stringWithFormat:@"tmall://tmallclient/?{\"action\":\"item:id=%@\"}", productID];
    NSURL *url = [NSURL URLWithString:[appUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    if ([[UIApplication sharedApplication] canOpenURL:url])
    {
        [[UIApplication sharedApplication] openURL:url];
    }
    else
    {
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://detail.m.tmall.com/item.htm?id=%@", itemId]];
        [[UIApplication sharedApplication] openURL:url];
        
    }
}

+ (void)jumpTaobaoProduct:(NSString *)itemId
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"taobao://item.taobao.com/item.htm?id=%@", itemId]];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    } else {
        url = [NSURL URLWithString:[NSString stringWithFormat:@"http://item.taobao.com/item.htm?id=%@", itemId]];
        [[UIApplication sharedApplication] openURL:url];
    }
}

+ (void)jumpJdProduct:(NSString *)itemId
{
    NSString *skuId = itemId;
    NSString *urlStr = [[NSString stringWithFormat:@"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"productDetail\",\"skuId\":\"%@\",\"sourceType\":\"JSHOP_SOURCE_TYPE\",\"sourceValue\":\"JSHOP_SOURCE_VALUE\"}",skuId] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *url = [NSURL URLWithString:urlStr];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    } else {
        url = [NSURL URLWithString:[NSString stringWithFormat:@"https://item.m.jd.com/product/%@.html",skuId]];
        [[UIApplication sharedApplication] openURL:url];
    }
}

// 跳转天猫店铺
+ (void)jumpTmallStore:(NSString *)itemId
{
    NSString *productID = itemId;
    NSString *appUrl = [NSString stringWithFormat:@"tmall://page.tm/shop?shopId=%@", productID];
    NSURL *url = [NSURL URLWithString:[appUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    if ([[UIApplication sharedApplication] canOpenURL:url])
    {
        [[UIApplication sharedApplication] openURL:url];
    }
    else
    {
        url = [NSURL URLWithString:[NSString stringWithFormat:@"https://shop.m.taobao.com/shop/shopIndex.htm?shop_id=%@", itemId]];
        [[UIApplication sharedApplication] openURL:url];
        
    }
}

// 跳转淘宝店铺
+ (void)jumpTaobaoStore:(NSString *)itemId
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"taobao://shop.m.taobao.com/shop/shop_index.htm?shop_id=%@", itemId]];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
        
    } else {
        url = [NSURL URLWithString:[NSString stringWithFormat:@"https://shop.m.taobao.com/shop/shopIndex.htm?shop_id=%@", itemId]];
        [[UIApplication sharedApplication] openURL:url];
    }
}

// 跳转京东店铺
+ (void)jumpJdStore:(NSString *)itemId
{
    NSString *skuId = itemId;
    NSString *urlStr = [[NSString stringWithFormat:@"openApp.jdMobile://virtual?params={\"category\":\"jump\",\"des\":\"jshopMain\",\"shopId\":\"%@\",\"sourceType\":\"M_sourceFrom\",\"sourceValue\":\"dp\"}",skuId] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *url = [NSURL URLWithString:urlStr];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    } else {
        url = [NSURL URLWithString:[NSString stringWithFormat:@"https://shop.m.jd.com/?shopId=%@",skuId]];
        [[UIApplication sharedApplication] openURL:url];
    }
}

@end
