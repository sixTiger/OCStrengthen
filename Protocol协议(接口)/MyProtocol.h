//
//  MyProtocol.h
//  oc加强总结
//
//  Created by Mac10.9.4 on 14-9-8.
//  Copyright (c) 2014年 xiaoxiaobing. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyProtocol <NSObject>
//必须实现
@required
- (void) test1;
//可以不实现
@optional
- (void) test2;

@end
