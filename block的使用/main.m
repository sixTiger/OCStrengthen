//
//  main.m
//  block的使用
//
//  Created by Mac10.9.4 on 14-9-8.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^Numbers)(int a ,int b);

/**
 *  block传参数
 */
void myBlock(Numbers number)
{
    number(1,2);
}

/**
 *  block的创建
 */
void createBlock()
{
    void (^test)()= ^()
    {
        NSLog(@"test");
    };
    test();
    
    void (^ sum)(int a, int b ) = ^(int a, int b)
    {
        NSLog(@"%d",a + b);
    };
    sum(2,3);
}

int main(int argc, const char * argv[])
{
    createBlock();
    
    myBlock(^(int a, int b) {
        NSLog(@"%d",a + b);
    });
    
    
    __block  int i = 10;
    void(^test)()= ^(){
        NSLog(@"i =  %d",i);
    };
    i=100;
    test();
    return 0;
}

