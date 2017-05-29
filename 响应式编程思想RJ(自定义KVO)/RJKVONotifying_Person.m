//
//  RJKVONotifying_Person.m
//  响应式编程思想RJ(自定义KVO)
//
//  Created by ruanjh on 2017/5/29.
//  Copyright © 2017年 app. All rights reserved.
//

#import "RJKVONotifying_Person.h"
#import <objc/runtime.h>

@implementation RJKVONotifying_Person


- (void)setAge:(int)age
{
     [super setAge:age];
    
    //通知观察者 属性改变
    
    id observer = objc_getAssociatedObject(self, @"observer");
    
    [observer observeValueForKeyPath:@"age" ofObject:self change:nil context:nil];
    
    
    
    
}

@end
