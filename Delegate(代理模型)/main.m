//
//  main.m
//  Delegate(代理模型)
//
//  Created by Mac10.9.4 on 14-9-8.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coder.h"
#import "Girl.h"


int main(int argc, const char * argv[])
{
    Coder *coder = [[Coder alloc] init];
    coder.name = @"程序员";
    Girl *girl = [[Girl alloc] init];
    coder.delegate = girl;
    
    [coder girl];
    
    return 0;
}

