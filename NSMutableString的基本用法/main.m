//
//  main.m
//  NSMutableString的基本用法
//
//  Created by Mac10.9.4 on 14-9-6.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  替换字符串中的一部分字符串
 */
void changeString()
{
    NSMutableString *str = [NSMutableString stringWithString:@"file://ios.itcast.cn/ios/images/content_25.jpg"];
    //获取相应的字符串的位置和长度
    NSRange range = [str rangeOfString:@"file"];
    //把相应的位置的字符串替换成给定的字符串
    [str replaceCharactersInRange:range withString:@"http"];
    NSLog(@"str = %@",str);
    //把字符串中的全部跟给定的字符串相同的部分换成特定的字符串（全换）
    NSString *newStr = [str stringByReplacingOccurrencesOfString:@"http" withString:@"file"];
    NSLog(@"newStr = %@",newStr);
}

/**
 *  把一个字符串插入到一个已经存在的字符串的特定位置
 */
void insertStringToString()
{
    NSMutableString *str = [NSMutableString string];
    [str appendString:@"我是第一个添加的"];
    [str insertString:@"我是第二个添加的" atIndex:0];
    NSLog(@"%@",str);
    
}
/**
 *  循环添加字符串
 */
void addString()
{
    NSMutableString *str = [NSMutableString string];
    NSString *forAdd = @" add ";
    for (int i = 0; i<5; i++) {
        [str appendString:forAdd];
    }
    //删除第一个空格
    [str deleteCharactersInRange:NSMakeRange(0, 1)];
    //删除最后一个空格
    [str deleteCharactersInRange:NSMakeRange(str.length -1, 1)];
    NSLog(@"###%@###",str);
    
    NSRange rang = [str rangeOfString:@"add"];
    [str deleteCharactersInRange:rang];
    NSLog(@"###%@###",str);
}
int main(int argc, const char * argv[])
{
    changeString();
    insertStringToString();
    addString();
    return 0;
}

