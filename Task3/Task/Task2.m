//
//  Task2.m
//  Task3
//
//  Created by jackzz on 2021/5/20.
//  Copyright © 2021 jackzz. All rights reserved.
//

#import "Task2.h"
#import "NSStack.h"

@interface Task2 ()
+ (NSInteger)calculater:(NSInteger)firstVal and:(NSInteger)secondVal with:(char)op;
+ (BOOL)isOperator:(NSString *)str;
@end

@implementation Task2

// process the prefix expression with a custom stack NSStack
+ (NSString *)calculatePrefixExpression:(NSString *)exp{
    
    NSArray<NSString *> *strArr = [exp componentsSeparatedByString:@" "];
    NSStack *stack = [NSStack new];      // define a stack to save every char of str
    
    // Loop visit the expression string if the stack top is a value
    // and the visiting char also a value, pop stack top and call calculater
    // else just push the visiting char in stack.
    for(NSString *elem in strArr){
        if(![self isOperator:elem]){
            if(![self isOperator:[stack top]]){
                
                NSInteger firstVal = 0;
                NSInteger secondVal = [elem integerValue];
                
                while([stack top] != nil && ![self isOperator:[stack top]]){
                    
                    firstVal = [[stack pop] integerValue];
                    char op = [[stack pop] characterAtIndex:0];
                    secondVal = [self calculater:firstVal and:secondVal with:op];
                }
                NSString *valStr = [NSString stringWithFormat: @"%lu", secondVal];
                [stack push: valStr];
            }
            else{
                [stack push:elem];
            }
        }
        else{
            [stack push:elem];
        }
    }
    
    return [stack top];
}

+ (NSInteger)calculater:(NSInteger)firstVal and:(NSInteger)secondVal with:(char)op{
    
    NSInteger res;
    switch(op){
        case '+':
            res =  firstVal + secondVal;
            break;
        case '-':
            res = firstVal - secondVal;
            break;
        case '*':
            res = firstVal * secondVal;
            break;
        case '/':
            res = firstVal / secondVal;
            break;
        default:
            res = -1001;
            break;
    }
    return res;
    
}

+ (BOOL)isOperator:(NSString *)str{
    if([str isEqualToString:@"+"] || [str isEqualToString:@"-"] ||
       [str isEqualToString:@"*"] || [str isEqualToString:@"/"]){
        
        return true;
    }
    return false;
}

@end
