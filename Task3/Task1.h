//
//  Task1.h
//  MyTask
//
//  Created by Jack on 2021/5/14.
//  Copyright © 2021 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Task1 : NSObject

@property(nonatomic) NSSet * memo;

-(void) permuteWithSting:(NSString *)str andIndex:(NSInteger)index;

-(void) calculateABCSubStr:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
