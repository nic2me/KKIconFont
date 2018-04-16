//
//  KKIconLabel.h
//  TestIconFont
//
//  Created by 茹赟 on 2018/4/17.
//  Copyright © 2018年 ruyun. All rights reserved.
//

#import <UIKit/UIKit.h>


IB_DESIGNABLE


@interface KKIconLabel : UILabel
/// 设置选中状态
@property(nonatomic, assign) BOOL selected;
/// 普通状态下的图片名称（只需要后面的4位 16 进制， 如：f3f7)
@property(nonatomic, copy, nullable) IBInspectable NSString *iconName;
/// 被选中状态下的图片名称（只需要后面的4位 16 进制，如：f3f7)
@property(nonatomic, copy, nullable) IBInspectable NSString *selectedIconName;
@end
