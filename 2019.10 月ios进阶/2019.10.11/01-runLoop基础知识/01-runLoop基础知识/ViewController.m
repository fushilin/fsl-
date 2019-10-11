//
//  ViewController.m
//  01-runLoop基础知识
//
//  Created by 我演示 on 2019/10/11.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "ViewController.h"
#import "SDWebImage.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    [[SDWebImageManager sharedManager] cancelAll]
    
//    afnet
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    /// 获取当前的线程
    NSRunLoop *currentRunLoop = [NSRunLoop currentRunLoop];
    
    
    
    NSLog(@"0000");
    
//    [[NSRunLoop currentRunLoop].currentRunLoop ]; /// 当前的loopx信息
    
}


-(void)GCD {
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    
    /**
     1: 第一个参数： 设置间隔时间
     2： 开始时间
     3： 间隔时间
     4：精准度
     
     */
    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 2.0* NSEC_PER_SEC, 0*NSEC_PER_SEC);
    
    dispatch_source_set_event_handler(timer, ^{
        
    });
    dispatch_resume(timer);
    
    
    /**
     1: 第一个参数，分配存储空间
     2： 要监听的状态
     3： 是否持续监听
     4：优先级处理
     5： 信息回调内容
     
     */
    CFRunLoopObserverCreateWithHandler(CFAllocatorGetDefault(), kCFRunLoopAllActivities, YES, 0, ^(CFRunLoopObserverRef observer, CFRunLoopActivity activity) {
        switch (activity) {
            case kCFRunLoopEntry:
//                 各种状态的处理
                
                break;
                
            default:
                break;
        }
        
    });
    
}

/**
 CFRunLoopModelRef 信息
  app 默认的model 信息
 
 */

@end
