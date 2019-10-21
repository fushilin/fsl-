//
//  BlockViewController.m
//  Block的基本使用
//
//  Created by 我演示 on 2019/10/20.
//  Copyright © 2019 Jerry-Fu. All rights reserved.
//

#import "BlockViewController.h"

@interface BlockViewController ()

@end

@implementation BlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)text{
    
    
    ///1: block 可以访问外面的变量信息
    
    ///2 : block   中可以定义和外界同名的变量，并且如果再block中定义了和外界同名的变量在
//    blcik中滴啊用的是block的变量
    
//    3：默认情况下，不可以在block中修改外界变量的值
    
//    block中的变量，与外界的变量并不是同一个变量信息
    
//    如果block中访问了外界的变量，block会讲外界的变量拷贝一份到堆内存中
    
    /// 5:  如果想在block中修改变量的值，x使用__block 的前缀，
    ///6:如果再blcok 中修改了外界的值，会影响外界的值的信息
    
    /// 为什么不加__block的值，就可以修改，不加就不能修改
    
    ///block 存储默认在栈中
    
    ///2: 如果存在blcok的放中进行copy 那么就会转移到堆中
    ///3:如果dblock 在推重，访问了对象，然后进行了一次retain的信息
    
    ///r如果访问了外界心中，会对外界的的对象进行一次retain的信息
    
    /// 如果再block访问乐然外界的对象，一定会对信息进行处理内容
    
    /// 对对象进行retaion的retain操作
    
    int a = 10 ;
    
    void (^myBlock)() = ^ {
        
    };
    myBlock();
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
