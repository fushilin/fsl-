//
//  ViewController.m
//  Block的基本使用
//
//  Created by 我演示 on 2019/10/20.
//  Copyright © 2019 Jerry-Fu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//typedef ()

/// typedef 给block 起别名  定义一个block 的声明 然后使用一个名称，只是一个数据类型，不是对象

/**
 应用场景
 */




typedef int (^causeBlcok) (int , int );
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self text3];
    
    /**void 代表blok将来没有返回值
     
     （）代表们将来保存的代码没有形参
     （ (^roseBlock) 代表reseBlock 是一个block的变量，可以用来保存一段代码
     
     
     返回值类型（^block 变量名）（ 形参） = ^(形参) { }
     
     
     */
    

//    void (^roseBlock) (); /// ^代表block 的形式
//
//    roseBlock = ^{
//        NSLog(@"haha");
//    };
//
//    roseBlock();

    /**
      有参数，无返回值的
     
     void (^roseBlock)  (int ) ;
     
     roseBlock =  ^ (int   num) {
     for(int  i = 0; i < num ;i ++ ) {
     NSLog(@"ja");
     
     }
     };
     
     roseBlock(3);
     */
    
    /** int (^sumBlock)(int value1 , int value2 ) ;
     
     sumBlock = ^(int value1 , int value2) {
     return value1 + value2;
     };
     sumBlock(10 , 45);
     
     NSLog(@"%d ",sumBlock(23,34));
     */
    
    /**
     1：先定义，再初始化
     
     2： 定义的时候，直接初始化数据
     
     */
   
    int (^sumBlock1)(int value1 , int value2 )  = ^(int value1 , int value2) {
        return value1 + value2;
    };
    sumBlock1(10 , 45);
    
    NSLog(@"%d ",sumBlock1(23,34));
    
}

-(void)text3 {
    
    int (^sumBlock) (int , int );
     sumBlock =   ^(int value1 , int value2){
        return value1 + value2 ;
    };
    
    
    int (^minBlock) (int , int );
    minBlock =   ^(int value1 , int value2){
        return value1 - value2 ;
    };
    
}


/**  当发现代码前面和后面都是一样的时候，就可以使用
 block来解决问题，只有部分地方不一样
 
 */
void goToWork(void (^workBlcok)() ) {
    NSLog(@"1");
    
    ///  不确定的东西，传递为参数 如果有多行的话，传递代码块接收
    /// block 必须调用才能执行
    workBlcok();
    
    NSLog(@"2");
    
}

void giToWorkDay1() {
    goToWork(^{
        
    });
}
/**
 找到需要读取文件
 
 读取文件
 
 操作文件
 
 关闭文件
 
 */


@end
