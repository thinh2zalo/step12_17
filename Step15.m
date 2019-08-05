//
//  Step15.m
//  Step12_17
//
//  Created by CPU11606 on 8/5/19.
//  Copyright © 2019 CPU11606. All rights reserved.
//

#import "Step15.h"

@implementation Step15
-(BOOL)isIsogram:(NSString *) stringInput{
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    for (int i = 0; i < [stringInput length]; i++) {
        NSString *ch = [stringInput substringWithRange:NSMakeRange(i, 1)];
        if([dict objectForKey:ch]){
            return false;
        }
        else{
        [dict setValue:[NSNumber numberWithInteger:1] forKey:ch];
        }
    }
    return true;
}

@end
