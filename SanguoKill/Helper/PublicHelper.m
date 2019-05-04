//
//  PublicHelper.m
//  SanguoKill
//
//  Created by 龙培 on 2019/5/4.
//  Copyright © 2019年 龙培. All rights reserved.
//

#import "PublicHelper.h"

@implementation PublicHelper
+ (NSObject*)readCardPlistFile
{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"card_default" ofType:@"plist"];
    NSMutableDictionary *dataDic = [[NSMutableDictionary alloc]initWithContentsOfFile:path];
    if (dataDic) {
        return dataDic;
    }
    return nil;
}

@end
