//
//  NSObject+Model.m
//  RunTime-MVVM
//
//  Created by 我演示 on 2019/10/12.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "NSObject+Model.h"
#import <objc/message.h>

@implementation NSObject (Model)
+(void)test {
    /**
     runTime : 便利模型中的所有的成员属性，去字典中查找
     
     属性定义，定义类型
     
     便利所有成员属性
     ivar： 成员属性
     class——copu 成员属性赋值
     
     Ivar ： 只想ivar 的指针
     class ： 获取哪个类的成员属性列表
     */
    int count = 0 ; /// 成员属性总数
    Ivar *ivarList = class_copyIvarList(self, &count);
    
    for (int i = 0 ; i < count; i++ ) {
        Ivar ivar = ivarList[0];
    
        
        NSString *propertyName = [NSString stringWithUTF8String:ivar_getName(ivar)];
    
        NSString *key = [propertyName substringFromIndex:1];
    
//        id value = dic
    }
    
//    ivar_getTypeEncoding(ivar);
    
}

@end
