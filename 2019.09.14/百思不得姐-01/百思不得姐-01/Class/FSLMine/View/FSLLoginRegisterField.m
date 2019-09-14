//
//  FSLLoginRegisterField.m
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/14.
//  Copyright © 2019 我演示. All rights reserved.
//

#define  FSLTextKeyPath @"ahhahahh"

#import "FSLLoginRegisterField.h"

@implementation FSLLoginRegisterField

-(void)awakeFromNib {
    [super awakeFromNib];
    self.tintColor = [UIColor whiteColor];
    
    /// 设置站位文字
    [self setValue:[UIColor whiteColor] forKeyPath:FSLTextKeyPath] ;
    
    ///3:   设置监听的的通知方法
    
    
}

-(void)dealloc {
    [[NSNotificationCenter alloc] removeObserver:self];
}

@end
