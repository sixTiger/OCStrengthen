//
//  Person.m
//  oc加强总结
//
//  Created by Mac10.9.4 on 14-9-6.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)eat
{
    NSLog(@"大吃货！！");
}
- (NSString *)fondFood:(NSString * )food
{
    NSLog(@"我在找吃的");
    NSLog(@"我吃的是%@",food);
    return @"我找到吃的了";
}

- (id)sum:(NSString *)a :(NSString *)b
{
    return [NSString stringWithFormat:@"%lf" ,[a doubleValue] + [b doubleValue]];
}
@end
