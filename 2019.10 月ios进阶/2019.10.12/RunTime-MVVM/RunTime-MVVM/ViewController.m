//
//  ViewController.m
//  RunTime-MVVM
//
//  Created by 我演示 on 2019/10/12.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "ViewController.h"
/**
 泛型： 限制类型
 
 1： 在集合（数组，字典，NSSet中使用泛型比较常见）
 
 2： 泛型好处，可以提高开发规范，减少程序员之间的交流
 3：只能修饰方法的调用
 4： 通过集合取出来的对象，只能当做泛型对象使用，可以直接使用点语法
 5：在声明一个类发的情况下，类里面的n某些类型不确定
 
 
 
 */


@interface ViewController ()

/**data泛型*/
@property(nonatomic,strong) NSMutableArray <NSString *>*datas;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
