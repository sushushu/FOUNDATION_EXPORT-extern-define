//
//  ViewController.m
//  FOUNDATION_EXPORT& extern&#define
//
//  Created by softlipa on 2019/1/10.
//  Copyright © 2019年 softlipa. All rights reserved.
//

#import "ViewController.h"
#import "Const.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // FOUNDATION_EXPORT之间的比较
    if (MJPropertyTypeInt == MJPropertyTypeFloat) {
        NSLog(@"FOUNDATION_EXPORT == Yes ");
    }
    if ([MJPropertyTypeInt isEqualToString:MJPropertyTypeFloat]) {
        NSLog(@"FOUNDATION_EXPORT  isEqualToString Yes ");
    }
    
    // extern之间的比较
    if (MJPropertyTypeInt_extern == MJPropertyTypeFloat_extern) {
        NSLog(@"extern == Yes ");
    }
    if ([MJPropertyTypeInt_extern isEqualToString:MJPropertyTypeFloat_extern]) {
        NSLog(@"extern isEqualToString Yes ");
    }

    // #define的比较
    // 报Direct comparison of a string literal has undefined behavior警告,但还是可以编译通过
    if (kMJPropertyTypeInt == kMJPropertyTypeFloat) {
        NSLog(@"#define 会报警告 ");
    }
    if ([kMJPropertyTypeInt isEqualToString:kMJPropertyTypeFloat]) {
        NSLog(@"#define isEqualToString YES");
    }
    
}

@end
