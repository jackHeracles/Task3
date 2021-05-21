//
//  NSStack.h
//  MyTask
//
//  Created by Jack on 2021/5/14.
//  Copyright © 2021 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSStack : NSObject

- (void)push:(NSString *)obj;
- (BOOL)isEmpty;
- (NSString *)pop;
- (NSString *)top;

@end

NS_ASSUME_NONNULL_END
