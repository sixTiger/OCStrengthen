//
//  main.m
//  NSMutableDictionary
//
//  Created by Mac10.9.4 on 14-9-7.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  创建一个可变字典数组
 */
void  createNSMutableDictionary()
{
    //初始化一个可变空字典
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    // 添加键值对
    [dict setObject:@"lilei" forKey:@"name1"];
    [dict setObject:@"10086" forKey:@"phone1"];
    
    // 代码简化
    dict[@"name2"] = @"lilei2";
    dict[@"phone2"] = @"210002";
    
    NSLog(@"dict = %@ count = %zd", dict, dict.count);
    
    NSDictionary *di = @{@"name": @"张三", @"address":@"China"};
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:di];
    
    NSLog(@"%zd", dic.count);
}

int main(int argc, const char * argv[])
{
    return 0;
}

