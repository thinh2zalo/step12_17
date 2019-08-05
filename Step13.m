//
//  Step13.m
//  Step12_17
//
//  Created by CPU11606 on 8/5/19.
//  Copyright © 2019 CPU11606. All rights reserved.
//

#import "Step13.h"
@interface Step13()
@property (nonatomic, strong) NSMutableDictionary * students;
@end
@implementation Step13

- (NSMutableDictionary *)students
{
    if (!_students) {
        _students = [@{} mutableCopy];
    }
    return _students;
}
-(void)addStudentWithName:(NSString *)name andGrade:(NSNumber *)grade{
    NSMutableArray *tempArray = [[self  listStudents:grade] mutableCopy];
    [tempArray addObject:name];
    [self.students setObject:tempArray forKey:grade];
        }
-(NSArray *)listStudents:(NSNumber *) grade{
    if([self.students objectForKey:grade])
    {
        return [self.students objectForKey:grade];
    }
    else
        return @[];
}
- (NSDictionary *)returnStudents
{
    return [self.students copy];
}
- (NSDictionary *)sort
{
    NSMutableDictionary *sortedStudents = [@{} mutableCopy];
    for (NSNumber *aStudent in self.students.allKeys) {
        sortedStudents[aStudent] = [[self.students objectForKey:aStudent] sortedArrayUsingSelector:@selector(compare:)];
    }
    return sortedStudents;
}
@end
