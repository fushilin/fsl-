//
//  FSLLoginRegisterField.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/14.
//  Copyright © 2019 我演示. All rights reserved.
//

//static NSString * context  FSLTextKeyPath =  @"ahhahahh" ;




#import "FSLLoginRegisterField.h"

@interface FSLLoginRegisterField()

/**监听器溢出*/
@property(nonatomic,strong) id observer;


@end

@implementation FSLLoginRegisterField

-(void)awakeFromNib {
    [super awakeFromNib];
    self.tintColor = [UIColor whiteColor];
    
    /// 设置站位文字
//    [self setValue:[UIColor whiteColor] forKeyPath:FSLTextKeyPath] ;
    
    ///3:   设置监听的的通知方法
    
    
    /// 4：使用block进行通知的信息
 self.observer =  [[NSNotificationCenter defaultCenter] addObserverForName:UITextFieldTextDidBeginEditingNotification object:self queue:[[NSOperationQueue alloc]init] usingBlock:^(NSNotification * _Nonnull note) {
        
    }];
    
    
    //5: 第五种方法
    [self becomeFirstResponder];
    
    ///6: 不能成为第一响应者
    [self resignFirstResponder];
    
    /// 7:退出第一响应者身份
    
    
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self.observer];
    
}


/// 调用系统的方法处理
-(BOOL)becomeFirstResponder {
    [self setValue:[UIColor whiteColor] forKeyPath:@""];
    return [super becomeFirstResponder];
    
}

-(BOOL)resignFirstResponder{
    [self setValue:[UIColor grayColor] forKeyPath:@""];
    return  [super resignFirstResponder];
}

@end
