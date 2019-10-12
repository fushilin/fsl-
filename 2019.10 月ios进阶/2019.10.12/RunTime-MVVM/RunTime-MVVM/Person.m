//
//  Person.m
//  RunTime-MVVM
//
//  Created by 我演示 on 2019/10/12.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "Person.h"
#import <objc/message.h>

@implementation Person

/**
 动态添加方法
 sel: 等待实现的方法
 */
+(BOOL)resolveInstanceMethod:(SEL)sel {
    
    return  YES;
}

/**
 cls： 给哪个类添加方法
 SEL : 添加方法的编号
 IMP ：方法实现，函数入口，函数名
 types ： 方法类型
 */


/// 定义函数   没有返回值参数（-id  ；SEL ）信息

void aaa(_cmd , self ){
    NSStringFromSelector(_cmd );
}

+(BOOL)resolveClassMethod:(SEL)sel {
    
    /// 动态添加eat的方法
    if ([NSStringFromSelector(sel) isEqualToString:@"eat"]) {
        /// 动态添加方法
        
    }
    class_addMethod(self, @selector(eat ), (IMP)aaa , "v@:");
    
    return  YES ;
}
-(void)eat {
    
}

+(void)eat {
    
}

@end
