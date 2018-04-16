//
//  KKIconLabel.m
//  TestIconFont
//
//  Created by 茹赟 on 2018/4/17.
//  Copyright © 2018年 ruyun. All rights reserved.
//
#define IconFontName @"iconfont"
#import "KKIconLabel.h"

@implementation KKIconLabel

- (void)setIconName:(NSString *)iconName {
    NSString *iName = iconUnicodeWithName(iconName);
    if (iName != _iconName) {
        _iconName = iName;
    }
}

- (void)setSelectedIconName:(NSString *)selectedIconName {
    NSString *iName = iconUnicodeWithName(selectedIconName);
    if (iName != _selectedIconName) {
        _selectedIconName = iName;
    }
}
NSString *iconUnicodeWithName(NSString *name) {
    NSScanner *scanner = [NSScanner scannerWithString:name];
    unsigned int code;
    [scanner scanHexInt:&code];
    return [NSString stringWithFormat:@"%C", (unsigned short)code];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setupFontWithSize:self.font.pointSize];
    [self reloadView];
}

- (void)prepareForInterfaceBuilder {
    [super prepareForInterfaceBuilder];
    
    [self setupFontWithSize:self.font.pointSize];
    [self reloadView];
}

// 初始化字体
- (void)setupFontWithSize:(CGFloat)fontSize {
    self.font = [UIFont fontWithName:IconFontName size:fontSize];
}

- (void)reloadView {
    self.text = _selected ? _selectedIconName : _iconName;
}
@end
