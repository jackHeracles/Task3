//
//  NSStack.h
//  Task3
//
//  Created by jackzz on 2021/5/20.
//  Copyright © 2021 jackzz. All rights reserved.
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
