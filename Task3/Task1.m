//
//  Task1.m
//  This is a demo of the solution with "abc" substring problems
//
//  Author: Jack
//  Date: April 14, 2021
//  Version: 2.0
//  Copyright © 2021 Jack. All rights reserved.
//


#import "Task1.h"

@implementation Task1

-(id) init
{
    if(self = [super init])
    {
        self.memo = [[NSSet alloc] init];
    }
    return self;
}

// get full arrangement
-(void) permuteWithSting:(NSString *) str andIndex:(NSInteger) index{
    
    if (index == [str length]){
        self.memo  = [self.memo setByAddingObject:str];
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
-(void) calculateABCSubStr:(NSString *)str{
    
    // get full arrangement without repetition and save in NSSet memo
    [self permuteWithSting:str andIndex:0];
    
    // Loop visit the Set memo and count the NSString with substring "abc"
    NSInteger count = 0;
    for (NSString *elem in self.memo) {
        // search the substring "abc"
        NSRange range;
        range = [elem rangeOfString:@"abc"];
        if (range.location != NSNotFound) {
            count++;
        }
    }
    NSLog(@"the total of abc substring is: %lu", count);
}

@end
