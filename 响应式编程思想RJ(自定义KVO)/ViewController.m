//
//  ViewController.m
//  响应式编程思想RJ(自定义KVO)
//
//  Created by ruanjh on 2017/5/27.
//  Copyright © 2017年 app. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+KVO.h"

@interface ViewController ()



@property (nonatomic, strong) Person *p;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [[Person alloc] init];
    _p = p;
    
    //添加观察者 系统自带的
    
    [p rj_addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew context:nil];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    NSLog(@"age__%zd",_p.age);
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    _p.age ++;
}



@end
