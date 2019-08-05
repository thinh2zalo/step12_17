//
//  Step14.m
//  Step12_17
//
//  Created by CPU11606 on 8/5/19.
//  Copyright © 2019 CPU11606. All rights reserved.
//

#import "Step14.h"

@implementation Step14
-(NSDictionary *)transform:(NSDictionary *) dictInput{
    NSMutableDictionary * newScrabble = [[NSMutableDictionary alloc] init];
    for(NSNumber *old in [dictInput allKeys]){
        for(NSString *oldEle in [dictInput objectForKey:old]){
            [newScrabble setValue:old forKeyPath:[oldEle lowercaseString]];
        }
    }
    return newScrabble;
}
@end
