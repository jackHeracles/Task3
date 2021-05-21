//
//  Task1.m
//  Task3
//
//  Created by jackzz on 2021/5/20.
//  Copyright © 2021 jackzz. All rights reserved.
//

#import "Task1.h"

@interface Task1 ()

@property (nonatomic, strong) NSSet * memo;

- (void)permuteWithSting:(NSString *)str andIndex:(NSInteger)index;

@end

@implementation Task1

- (instancetype) init
{
    if(self = [super init])
    {
        _memo = [[NSSet alloc] init];
    }
    return self;
}

// get full arrangement
-(void) permuteWithSting:(NSString *) str andIndex:(NSInteger) index{
    
    if (index == [str length]){
        _memo  = [_memo setByAddingObject:str];
        return;
    }
    
    for(NSInteger i = index; i < [str length]; i++){
        
        NSRange range1 = NSMakeRange(index, 1);
        NSString* str1 = [str substringWithRange:range1];
        NSRange range2 = NSMakeRange(i, 1);
        NSString* str2 = [str substringWithRange:range2];
        
        str = [str stringByReplacingCharactersInRange:range1 withString:str2];
        str = [str stringByReplacingCharactersInRange:range2 withString:str1];
        
        [self permuteWithSting:str andIndex:(index+1)];
        
        [str stringByReplacingCharactersInRange:range1 withString:str1];
        [str stringByReplacingCharactersInRange:range2 withString:str2];
    }
}

// caculater the final result and output in command
-(NSInteger) calculateABCSubStr:(NSString *)str{
    
    // get full arrangement without repetition and save in NSSet memo
    [self permuteWithSting:str andIndex:0];
    
    // Loop visit the Set memo and count the NSString with substring "abc"
    NSInteger count = 0;
    for (NSString *elem in _memo) {
        // search the substring "abc"
        NSRange range;
        range = [elem rangeOfString:@"abc"];
        if (range.location != NSNotFound) {
            count++;
        }
    }
    return count;
}

@end

