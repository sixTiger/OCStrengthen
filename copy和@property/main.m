//
//  main.m
//  copy和@property
//
//  Created by Mac10.9.4 on 14-9-8.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    Person *p = [[Person alloc] init];
    
    NSMutableString *temp = [NSMutableString string];
    [temp appendFormat:@"夏雨荷"];
    p.name = temp;
    p.address = temp;
    [temp appendString:@"大明湖"];
    NSLog(@"\nname:  %@ \n address:  %@",p.name, p.address);
    
    [p release];
    return 0;
}

