//
//  Step12.m
//  Step12_17
//
//  Created by CPU11606 on 8/5/19.
//  Copyright © 2019 CPU11606. All rights reserved.
//

#import "Step12.h"

@implementation Step12
-(void)rainDrops{
    NSMutableString *results = [[NSMutableString alloc] init];
    NSDictionary *dict = @{@3:@"Pling", @5:@"Plang", @7:@"Plong"};
    
    NSArray *values = [[dict allKeys] sortedArrayUsingSelector:@selector(compare:)];
    for(NSNumber *elememt in values){
        if(number % elememt.integerValue == 0){
            [results appendString:[dict objectForKey:elememt]];
        }
    }
    if([results length] == 0){
        [results appendFormat:@"%d",number];
    }
    NSLog(@"%@", results);
    
}
- (Step12 *)init:(NSInteger) numberInput
{
    self = [super init];
    if (self) {
        number = numberInput;
    }
    return self;
}
@end
