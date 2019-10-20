//
//  Person.m
//  02-getSettrer
//
//  Created by 我演示 on 2019/10/19.
//  Copyright © 2019 Jerry-Fu. All rights reserved.
//

#import "Person.h"

@implementation Person


// 在里面，重写init的方法，在init方法中重写初始化成员的变量
/// 注意，init必须按照苹果的规定的格式重写，如果不按照规定重写，会引发一定的未知错误

/// bixu 先初始化父类
/**
2： 首先判断父类是否初始成功，只有初始化f成功，才能初始化自雷
3: f返回当前对象的地址
*/
-(instancetype)init {
    self = [super init];
    
    //2: 判断
    if (self != nil) {
        
    }
    
    return self;
}

/**1：自定义构造方法
 2： 一定是对象方法
 3：y一定返回对应的id/instance的方法
 4：方法名称一定是init开头的方法
 */
-(instancetype)initWithAge:(int )age {
    
    if (self = [super init]) {
        
    }
    return  self;
    
}
/**一个类，可以有
 0个或者多个自定义构造的方法
 
 */

@end
