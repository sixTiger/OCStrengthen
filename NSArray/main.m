//
//  main.m
//  NSArray
//
//  Created by Mac10.9.4 on 14-9-8.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  数组的常用用法
 */
void useOfArray()
{
    NSArray *array = @[@1,@2,@4,@3,@5,@6];
    NSLog(@"%@",array);
    //对数组进行排序
    NSLog(@"%@",[array sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return  obj1 > obj2;
    }]);
    //输出下标为2的元素
    id test = [array objectAtIndex:2];
    NSLog(@"%@",test);
    //和上边的效果一样
    NSLog(@"%@",array[2]);
    
    //查找元素
    NSLog(@"输出元素的下标，如果没有的话输出随机数 \n Array1 下标： %lu", [array indexOfObject:@"Array"]);
    
    //判断一个元素是否存在
    
    NSLog(@"判断一个元素是否存在，不存在为9223372036854775807   %d", [array containsObject:@"Array1"]);
}

/**
 *  创建一个数组 并把数组写到文件里
 */
void createNSArray()
{
    NSArray *arrsy1 = [NSArray arrayWithObject:@"Array1"];
    NSLog(@"%@",arrsy1);
    NSArray *array2 = [NSArray arrayWithObjects:@"Array2_1",@"Array2_2",@"Array2_3", nil];
    NSLog(@"%@",array2);
    NSArray *array3 = @[@"Array3_1",@"Array3_2"];
    NSLog(@"%@",array3);
    //把数组写到文件中
    [array3 writeToFile:@"/Users/Mac/Desktop/array.xml" atomically:YES];
    //把文件中的数据读到数组里
    NSArray *arrayFromFile =  [NSArray arrayWithContentsOfFile:@"/Users/Mac/Desktop/array.xml"];
    NSLog(@"从文件中读取的数据%@",arrayFromFile);
}
int main(int argc, const char * argv[])
{
    
    //createNSArray();
    useOfArray();
    return 0;
}

