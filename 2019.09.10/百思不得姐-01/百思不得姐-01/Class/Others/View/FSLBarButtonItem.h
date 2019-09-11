//
//  FSLBarButtonItem.h
//  百思不得姐-01
//
//  Created by 我演示 on 2019/9/11.
//  Copyright © 2019 我演示. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FSLBarButtonItem : UIBarButtonItem

+(UIBarButtonItem *)itemWithImage:(NSString *)string highSelctImage:(NSString *)selectImage andTarget:(id)target  andAciton:(SEL)action;

@end

NS_ASSUME_NONNULL_END
