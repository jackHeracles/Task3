//
//  NSStack.m
//  Custom stack class
//
//  Author: Jack
//  Date: April 14, 2021
//  Version: 2.0
//  Created by Jack on 2021/5/14.
//  Copyright © 2021 Jack. All rights reserved.
//

#import "NSStack.h"

@interface NSStack ()
@property (nonatomic, strong) NSMutableArray<NSString *> *mArray;
@property (nonatomic) NSUInteger count;
@end

@implementation NSStack

- (instancetype)init{
    
    if( self=[super init] ){
        _mArray = [[NSMutableArray alloc] init];
        _count = 0;
    }
    return self;
}

- (void)push:(NSString *)obj{
    
    _count++;
    if(_count > [_mArray count]){
        [_mArray addObject:obj];
    }
    else{
        [_mArray replaceObjectAtIndex:(_count - 1) withObject: obj];
    }
}

- (BOOL)isEmpty{
    
    return (_mArray.count == 0);
}

- (NSString *)pop{
    
    _count--;
    if(_count < 0){
        _count = 0;
        return nil;
    }
    return [_mArray objectAtIndex:(_count)];
}

- (NSString *)top{
    
    if(_count == 0){
        return nil;
    }
    return [_mArray objectAtIndex:(_count - 1)];
}

@end
