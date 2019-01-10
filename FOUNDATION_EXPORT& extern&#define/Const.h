//
//  Const.h
//  FOUNDATION_EXPORT& extern&#define
//
//  Created by softlipa on 2019/1/10.
//  Copyright © 2019年 softlipa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Const : NSObject

// FOUNDATION_EXPORT Fundation框架里面的宏
FOUNDATION_EXPORT NSString *const MJPropertyTypeInt;
FOUNDATION_EXPORT NSString *const MJPropertyTypeFloat;

// extern c/c++的关键字表示常量在别处定义的，尽量隐藏细节
extern NSString *const MJPropertyTypeInt_extern;
extern NSString *const MJPropertyTypeFloat_extern;

// #define
#define kMJPropertyTypeInt @"i"
#define kMJPropertyTypeFloat @"i"

@end
