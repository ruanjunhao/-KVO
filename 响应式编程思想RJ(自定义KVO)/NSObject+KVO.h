//
//  NSObject+KVO.h
//  响应式编程思想RJ(自定义KVO)
//
//  Created by ruanjh on 2017/5/29.
//  Copyright © 2017年 app. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (KVO)

- (void)rj_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context;
@end
