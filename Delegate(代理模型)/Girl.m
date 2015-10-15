//
//  Girl.m
//  oc加强总结
//
//  Created by Mac10.9.4 on 14-9-8.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import "Girl.h"
#import "Coder.h"

@implementation Girl

- (void)findGirl:(Coder *)delegate
{
    NSLog(@"我在帮%@找女朋友", delegate.name);
}
@end
