//
//  main.m
//  NSDate_应用
//
//  Created by Mac10.9.4 on 14-9-6.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    /**
     *  设置日期格式
     */
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"YYYY-MM-DD  HH:mm:ss";
    
    
    // 将NSString转换为NSDate
    NSDate *testDate = [formatter dateFromString:@"2010-03-24 00:00:00"];
    
    // 将NSDate转换为NSString
    NSLog(@"%@", [formatter stringFromDate:testDate]);
    
    /**
     * 将时间转化为NSString
     */
    
    NSDate *timeNow = [NSDate date];
    NSString *time = [formatter stringFromDate:timeNow];
    NSLog(@"%@",time);

    
    return 0;
}

