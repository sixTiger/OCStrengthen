//
//  Coder.m
//  oc加强总结
//
//  Created by Mac10.9.4 on 14-9-8.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import "Coder.h"

@implementation Coder

-(void)girl
{
    NSLog(@"我是%@",_name);
    [self.delegate findGirl: self];
}

@end
