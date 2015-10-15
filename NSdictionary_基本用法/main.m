//
//  main.m
//  NSdictionary_基本用法
//
//  Created by Mac10.9.4 on 14-9-6.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  把字典写到文件中
 */
void dictionaryTOFile()
{
    NSDictionary *dict1 = @{@"name": @"张三", @"phone":@"10000", @"address":@"China"};
    NSDictionary *dict2 = @{@"name": @"李四", @"phone":@"10010", @"address":@"USA"};
    NSDictionary *dict3 = @{@"name": @"王八", @"phone":@"10086", @"address":@"UK"};
    NSDictionary *dict4 = [NSDictionary dictionaryWithObjectsAndKeys:@"赵六",@"name", nil];
    //创建一个字典数组
    NSArray *array = @[dict1, dict2, dict3,dict4];
    //把字典数组写到文件中
    [array writeToFile:@"/Users/xiaobing/Desktop/persons.plist" atomically:YES];
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@",obj);
    }];
    // 从字典中获得数组
   NSLog(@"%@", [array valueForKeyPath:@"name"]);

}
int main(int argc, const char * argv[])
{
    dictionaryTOFile();
    return 0;
}

