//
//  AppDelegate.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/9.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "AppDelegate.h"
#import "FSLViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    ///1: s声明窗口
    self.window = [[UIWindow alloc]init];
    
    self.window.frame = UIScreen.mainScreen.bounds;
    
    
    ///2.1  设置本来样式色值 NSForegroundColorAttributeName
    NSMutableDictionary *normalDict = [NSMutableDictionary dictionary];
    normalDict[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    normalDict[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    /// 2.2 设置选中样式的类型
    NSMutableDictionary *selectDict = [NSMutableDictionary dictionary];
    selectDict[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    
    ///2 :   创建tab
    UITabBarController *tab = [[UITabBarController alloc] init];

    /// 创建子控制器
    
    UIViewController *vc1 = [[UIViewController alloc]init];
    vc1.tabBarItem.title = @"首页";
    vc1.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    vc1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    [vc1.tabBarItem setTitleTextAttributes:normalDict forState:UIControlStateNormal];
    [vc1.tabBarItem setTitleTextAttributes:selectDict forState:UIControlStateSelected];
    [tab addChildViewController:vc1];
    
    /// 添加第二个j控制器
    
    UIViewController *vc2 = [[UIViewController alloc]init];
    vc2.tabBarItem.title = @"关注";
    vc2.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    vc2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    vc2.view.backgroundColor = [UIColor grayColor];
    
    [vc2.tabBarItem setTitleTextAttributes:normalDict forState:UIControlStateNormal];
    [vc2.tabBarItem setTitleTextAttributes:selectDict forState:UIControlStateSelected];
    [tab addChildViewController:vc2];
    
    
    /// 创建跟试图控制器
    self.window.rootViewController =   tab ;
    
    
    ///3 : 运行程序
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
