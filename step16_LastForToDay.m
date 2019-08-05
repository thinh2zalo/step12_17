//
//  step16_LastForToDay.m
//  Step12_17
//
//  Created by CPU11606 on 8/5/19.
//  Copyright © 2019 CPU11606. All rights reserved.
//

#import "step16_LastForToDay.h"

@implementation step16_LastForToDay
-(NSArray *)flattenArray:(NSMutableArray *) flat withInput:(NSArray *) arrayInput{
   
    for(int i =  0 ; i < [arrayInput count] ; i ++){
        if([[arrayInput objectAtIndex:i] isKindOfClass:[NSArray class]]){
            [self flattenArray:flat withInput:[arrayInput objectAtIndex:i]];
        }
        else
            if(arrayInput[i] !=[NSNull null]){
                [flat addObject:arrayInput[i]];
            }
    }
    return flat;
}
-(NSArray *)tranfers:(NSArray *)arrayInput{
    NSMutableArray *results = [[NSMutableArray alloc] init];
    return [self flattenArray:results withInput:arrayInput];
   
    
}

@end
