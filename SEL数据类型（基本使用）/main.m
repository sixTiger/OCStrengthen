//
//  main.m
//  SEL数据类型（基本使用）
//
//  Created by Mac10.9.4 on 14-9-6.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"



int main(int argc, const char * argv[])
{
    
    Person *p = [[Person alloc] init];
    [p eat];
    SEL eatTest = @selector(eat);
//    sel_registerName(<#const char *str#>)
    //和直接调用 [p eat] 效果完全一样
    [p performSelector:eatTest];
    SEL fondFoodTest = @selector(fondFood:);
    NSString * temp =@"*******";
    //和直接调用 [p fondFood：temp] 效果完全一样 
    NSString *test = [p performSelector:fondFoodTest withObject:temp];
    NSLog(@"%@",test);
    
    
    SEL sumSel = @selector(sum::);
    NSLog(@"%@",[p performSelector:sumSel withObject:@"1" withObject:@"2"]);
    
    return 0;
}

