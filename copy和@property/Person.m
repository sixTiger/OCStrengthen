//
//  Person.m
//  oc加强总结
//
//  Created by Mac10.9.4 on 14-9-8.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) setName:(NSString *)name
{
    if (_name != name)
    {
        [_name release];
        //用retain 的时候是直接把地址给_name 外边改变值的话里边会跟着
        _name = [name retain];
    }
}

- (void) setAddress:(NSString *)address
{
    if (_address != address)
    {
        [_address release];
        _address = [address copy];
    }
}
-(void)dealloc
{
    NSLog(@"Person  delloc");
    [super dealloc];
}
@end
