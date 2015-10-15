//
//  Coder.h
//  oc加强总结
//
//  Created by Mac10.9.4 on 14-9-8.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Coder;
@protocol CoderDelegate <NSObject>

- (void) findGirl:(Coder *)delegate;

@end

@interface Coder : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic ,strong)id<CoderDelegate> delegate;

- (void)girl;

@end
