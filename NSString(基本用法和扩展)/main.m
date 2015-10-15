//
//  main.m
//  NSString(基本用法和扩展)
//
//  Created by Mac10.9.4 on 14-9-6.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  格式化字符串
 */
void formatSting()
{
    NSString *str = @"HTTP**  ios.itcast.cn  *ios*images*  content_25.**JPG";
    //去掉头尾的大写字母部分（设计的格式）
    NSCharacterSet *set1 = [NSCharacterSet uppercaseLetterCharacterSet];
    //去掉字符串头尾的* （设计的格式）
    NSCharacterSet *set2 = [NSCharacterSet characterSetWithCharactersInString:@"*"];
    //遵守格式1
    NSString *newStr1 = [str stringByTrimmingCharactersInSet:set1];
    NSLog(@"newStr = ---%@---", newStr1);
    //遵守格式2
    NSString *newStr2 = [newStr1 stringByTrimmingCharactersInSet:set2];
    NSLog(@"destStr = ---%@---", newStr2);
    //去掉头尾的空格
    NSCharacterSet *set3 = [NSCharacterSet whitespaceCharacterSet];
    NSString *newStr3 = [newStr2 stringByTrimmingCharactersInSet:set3];
    NSLog(@"--%@--",newStr3);
    
}
/**
 *  字符串的相关数学运算
 */
void mathAboutNSString()
{
    NSString *s1 = @"100";
    NSString *s2 = @"100.5";
    
    double sum = [s1 intValue] + s2.doubleValue;
    NSLog(@"sum  = %f", sum);
}

/**
 讲一个字符串存到文本中
 */
void stringToFile()
{
    NSString  *str = @"哇哈哈哈just  have  a try  ";
    [str writeToFile:@"/Users/Mac/Desktop/stringToFile1.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    [str writeToURL:[NSURL URLWithString:@"file:///Users/Mac/Desktop/stringToFile2.txt"] atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSMutableString *string = [NSMutableString new];
    NSMutableString *dynamicString = [NSMutableString new];
    NSMutableString *synthesizeString = [NSMutableString new];
    for (int i = 0 ; i < 10000 ; i++)
    {
        
        [dynamicString appendString:[NSString stringWithFormat:@"@dynamic test%d;\n",i]];
        [synthesizeString appendString:[NSString stringWithFormat:@"@synthesize test%d;\n",i]];
        [string appendString:[NSString stringWithFormat:@"@property(nonatomic , strong) NSString *test%d;\n",i]];
    }
    [string writeToFile:@"/Users/xiaobing/Desktop/a.text" atomically:YES encoding:NSUTF8StringEncoding error:nil];
    [dynamicString writeToFile:@"/Users/xiaobing/Desktop/dynamic.text" atomically:YES encoding:NSUTF8StringEncoding error:nil];
    [synthesizeString writeToFile:@"/Users/xiaobing/Desktop/synthesize.text" atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
}
/**
 *  从文件中读取内容
 */
void stringFromFile()
{
    // 用来保存错误信息
    NSError *error = nil;
    // 读取文件内容
    NSString *str = [NSString stringWithContentsOfFile:@"/Users/Mac/Desktop/stringToFile1.txt" encoding:NSUTF8StringEncoding error:&error];
    // 如果有错误信息
    if (error) {
        NSLog(@"读取失败, 错误原因是:%@", [error localizedDescription]);
    } else { // 如果没有错误信息
        NSLog(@"读取成功, 文件内容是:\n%@", str);
    }
    
    
    //NSError *errorUrl = nil;
    
    // 创建URL路径
    NSURL *url = [NSURL URLWithString:@"file:///Users/Mac/Desktop/stringToFile2.txt"];
    
    // 读取文件内容
    str = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
    
    // 如果有错误信息
    if (error) {
        NSLog(@"读取失败, 错误原因是:%@", [error localizedDescription]);
    } else { // 如果没有错误信息
        NSLog(@"读取成功, 文件内容是:\n%@", str);
    }
    
    
}
/**
 *  字符串拼接
 */
void addString()
{
    NSString * str1 = @"我是第一段字符串";
    NSString *str2 = @"我是第二段字符串";
    
    NSString *str3 = [NSString stringWithFormat:@"%@%@",str1,str2];
    NSLog(@"%@",str3);
    
}
/**
 *字符串的大小写转换
 */
void changeString()
{
    NSString *str = @"Just change the World";
    NSLog(@"全部换成大写%@",[str uppercaseString]);
    NSLog(@"全部换成小写%@",[str lowercaseString]);
    NSLog(@"首字母大写%@",[str capitalizedString]);
}
/**
 *  字符串截取
 */
void cutString()
{
    
    NSLog(@"hasPrefix判断是否以给出的字符串为开头，如果以给出的字符串为开头则返回1 否则返回0 %d",[@"hello.txt" hasPrefix:@"hello"]);
    NSLog(@"hasSuffix判断是否以给出的字符串为结尾，如果以给出的字符串为结尾则返回1 否则返回0 %d",[@"hello.txt" hasSuffix:@"txt"]);
    
    NSString *test = @"0123456789123";
    NSString *such =@"123";
    NSLog(@"rangeOfString 判断字符串是出现的位置和长度    %zd %zd",[test rangeOfString:such].location,[test rangeOfString:test].length);
    NSLog(@"rangeOfString:such options:NSBackwardsSearch 从后边查找   %zd %zd",[test rangeOfString:such options:NSBackwardsSearch].location,[test rangeOfString:test].length);
    NSLog(@"substringFromIndex 从当前下标开始截取到字符串结尾 %@",[test substringFromIndex:2]);
    
    NSLog(@"substringToIndex  从字符串的开始截取到当前下标的字符串（不包含当前下标）%@",[test substringToIndex:5]);
    NSRange nsRange = {2,3};
    NSLog(@"substringWithRange   从点的下标开始，截取规定长度的字符串出来%@",[test substringWithRange:nsRange]);
    
    NSLog(@"stringByReplacingOccurrencesOfString 吧字符串中的字符进行替换    %@",[test stringByReplacingOccurrencesOfString:@"1" withString:@"***"]);
    [test stringByReplacingOccurrencesOfString:@"123" withString:@""];
    
}
/**
 *  字符串的比较
 */
void compareString()
{
    NSString *str1 = @"aBc";
    NSString *str2 = @"abc";
    NSLog(@"compare  区分大小写  %d   相同是0",(int)[str1 compare:str2]);
    NSLog(@"caseInsensitiveCompare 不区分大小写 %d    相同是0" ,(int)[str1 caseInsensitiveCompare:str2]);
    NSLog(@"isEqualToString  区分大小写 %d  相同是 1 不同是0",[str1 isEqualToString:str2]);
    
}
int main(int argc, const char * argv[])
{
//    formatSting();
//    mathAboutNSString();
    stringToFile();
//    stringFromFile();
//    addString();
//    changeString();
//    compareString();
//    cutString();
    return 0;
}

