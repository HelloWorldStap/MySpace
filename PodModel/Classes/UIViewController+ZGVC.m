//
//  UIViewController+ZGVC.m
//  NewZGJY
//
//  Created by mac on 2019/6/12.
//  Copyright © 2019年 offcn. All rights reserved.
//

#import "UIViewController+ZGVC.h"
#import <objc/runtime.h>


static NSString *paramKey = @"param";
@interface UIViewController()
@end
@implementation UIViewController (ZGVC)
-(void)setParam:(NSDictionary *)param
{
    
    objc_setAssociatedObject(self, &paramKey, param, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(NSDictionary *)param
{
    return objc_getAssociatedObject(self, &paramKey);
}
@end
