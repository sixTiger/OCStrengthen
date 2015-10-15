//
//  main.m
//  NSCalendar应用(比较两个时间差)
//
//  Created by Mac10.9.4 on 14-9-6.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  获取时间的年月日时分秒
 */
void getTime()
{
    //  1. 当前时间
    NSDate *now = [NSDate date];
    
    //  2. 获得当前的日历对象
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    //  3. 利用NSCalendar取出年 月 日
    //  一次获得一个事件要素
    //        NSInteger month = [calendar component:NSCalendarUnitMonth fromDate:now];
    
    //  一次获得多个时间要素
    int unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *nscmps = [calendar components:unit fromDate:now];
    //  4. 打印时间的要素
    //        NSLog(@"month = %ld", month);
    NSLog(@"%@", nscmps);
}

/**
 *  计算两个时间的差值
 */
void getTimeSub()
{
    //NSDateComponents 里边包含的数据 想要几个就写几个。
    NSInteger unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    NSString *time1 = @"2015/03/04 09:00:00";
    NSString *time2 = @"2015/04/14 18:00:00";
    
    
    //控制时间的格式。
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy/MM/dd HH:mm:ss";
    
    NSDate *dateTime1 = [formatter dateFromString:time1];
    NSDate *dateTime2 = [formatter dateFromString:time2];
    NSCalendar *clendar = [NSCalendar currentCalendar];
    
    
    //计算时间的差值并返回一个 NSDateComponents对象。
    NSDateComponents *cmps = [clendar components:unit fromDate:dateTime1 toDate:dateTime2 options:0];
    NSLog(@"相差%ld年%ld月%ld日%ld时%ld分%ld秒", cmps.year, cmps.month, cmps.day, cmps.hour, cmps.minute, cmps.second);
}
int main(int argc, const char * argv[])
{
    getTime();
    getTimeSub();
    return 0;
}

