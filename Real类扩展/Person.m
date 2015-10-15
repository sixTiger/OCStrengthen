//
//  Person.m
//  oc加强总结
//
//  Created by Mac10.9.4 on 14-9-10.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import "Person.h"

@interface Person()

- (void) added;

@end

@implementation Person

- (void)addFunction
{
    NSLog(@"我是AddFunction persion进行了扩展\n 扩展的东西只能再本类内部使用");
    [self added];
}

-(void)added
{
    NSLog(@"我是内部进行的扩展方法 我只能再类的内不是用");
}
@end
