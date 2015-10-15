//
//  main.m
//  NSFileManager(文件的相关应用)
//
//  Created by Mac10.9.4 on 14-9-6.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 *  判断文件是否存在
 */
void panDuanWenJianShiFouCunZai()
{
    //拿到文件管理对象 （一个程序只有一个文件管理对象、既单例模式）
    NSFileManager *manager = [NSFileManager defaultManager];
    //判断文件是否存在
    
    NSString *path =@"/Users/Mac/Desktop/stringToFile3.txt";
    BOOL isExist = [manager fileExistsAtPath:path];
    NSLog(@"文件是否存在 存在为1 不存在为 0 %d",isExist);
    
    
    BOOL isDir = NO;
    isExist = [manager fileExistsAtPath:path isDirectory:&isDir];
    
    NSLog(@"文件是否存在 存在为1 不存在为 0   ***%d\n文件是否为文件夹  1 为文件夹 0 为文件 ***%d",isExist,isDir);
    
}
/**
 *  创建文件夹
 */
void createDirectory()
{
    NSFileManager *manager = [NSFileManager defaultManager];
    NSString *path = @"/Users/Mac/Desktop/test/test/test";
    //只能创建问价夹
    //attributes 创建的文件夹得属性
    //withIntermediateDirectories 是否级联创建
    //error 出现的错误
    [manager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
}

/**
 *  获取文件的相关权限
 */
void getFileAll()
{

    //获得文件管理对象
    NSFileManager *manager = [NSFileManager defaultManager];
    NSString *path = @"/Users/Mac/Desktop/test";
    
    //获取当前文件下的所有东西，但是不会获得当前目录下的子目录的东西
    NSArray * allFile = [manager contentsOfDirectoryAtPath:path error:nil];
    NSLog(@"%@",allFile);
    
    //获取当前文件下的所有东西，同时会获得当前目录下的子目录的东西
    NSArray *allFileDictionary = [manager subpathsOfDirectoryAtPath:path error:nil];
    NSLog(@"%@",allFileDictionary);
    
    
    //获取文件的所有属性
    NSDictionary *dictionary = [manager attributesOfItemAtPath:path error:nil];
    NSLog(@"%@",dictionary);
    
}
/**
 *  拷贝文件
 */
void copyFile()
{
    NSFileManager *mgr = [NSFileManager defaultManager];
    // 拷贝注意点（两边都要写全路径）
    [mgr copyItemAtPath:@"/Users/Mac/Desktop/test.txt" toPath:@"/Users/Mac/Desktop/test/test.txt" error:nil];

}
/**
 * 创建文件
 */
void createFile()
{
    NSString *path = @"/Users/Mac/Desktop/test.txt";
    
    NSFileManager *mgr = [NSFileManager defaultManager];
    
    // 把字符串转成二进制数据以后写成文件
    NSString *str = @"我就是试一下而已嘛！！！";
    
    //  NSString -> NSData
    //  将NSData写成文件
    //  tributes 文件属性
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    
    [mgr createFileAtPath:path contents:data attributes:nil];
}

int main(int argc, const char * argv[])
{
    panDuanWenJianShiFouCunZai();
    createDirectory();
    getFileAll();
    createFile();
    copyFile();
    return 0;
}

