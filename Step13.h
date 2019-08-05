//
//  Step13.h
//  Step12_17
//
//  Created by CPU11606 on 8/5/19.
//  Copyright © 2019 CPU11606. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Step13 : NSObject
-(void)addStudentWithName:(NSString *)name andGrade:(NSNumber *)grade;
-(NSDictionary *)returnStudents;
-(NSDictionary *)sort;
@end

NS_ASSUME_NONNULL_END
