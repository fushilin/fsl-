//
//  NSObject+Objc.m
//  RunTime-MVVM
//
//  Created by 我演示 on 2019/10/12.
//  Copyright © 2019 我演示. All rights reserved.
//

#import "NSObject+Objc.h"
#import <objc/message.h>

static NSString *_name ;

@implementation NSObject (Objc)

-(void)setName:(NSString *)name {
    /**
     1:添加属性，跟对象处理
     2： 给摸个对象产生关联，添加属性
     
     */
    
    objc_setAssociatedObject(self, @"name" , name, OBJC_ASSOCIATION_RETAIN);
    
    
    
}
-(NSString *)name {
    return  _name ;
}
@end
