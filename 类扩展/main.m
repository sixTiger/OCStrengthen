//
//  main.m
//  类扩展
//
//  Created by Mac10.9.4 on 14-9-8.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person+PersonPro.h"

int main(int argc, const char * argv[])
{

    Person *p = [[Person alloc] init];
    
    [p personPro];
    return 0;
}

