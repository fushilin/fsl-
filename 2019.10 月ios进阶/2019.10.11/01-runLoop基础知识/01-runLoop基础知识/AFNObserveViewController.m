//
//  AFNObserveViewController.m
//  01-runLoop基础知识
//
//  Created by 我演示 on 2019/10/12.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "AFNObserveViewController.h"
#import "AFNetworking.h"
@interface AFNObserveViewController ()

@end

@implementation AFNObserveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/**
 AFNe网络监听着
 
 */
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager sharedManager];
    
    [manager setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        /**
         AFNetworkReachabilityStatusUnknown          = -1, 位置
         AFNetworkReachabilityStatusNotReachable     = 0, 没有联网
         AFNetworkReachabilityStatusReachableViaWWAN = 1, 3G
         AFNetworkReachabilityStatusReachableViaWiFi = 2, = wifi
         */
        
        
        
        
        
    }];
    
    /**
    开始监测
     */
    [manager startMonitoring];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
