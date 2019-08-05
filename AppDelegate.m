//
//  AppDelegate.m
//  Step12_17
//
//  Created by CPU11606 on 8/5/19.
//  Copyright © 2019 CPU11606. All rights reserved.
//

#import "AppDelegate.h"
#import "Step12.h"
#import "Step13.h"
#import "Step14.h"
#import "Step15.h"
#import "step16_LastForToDay.h"
#define SECOND  0
#define MINUTE  60
#define HOUSE MINUTE*60
#define DAY HOUSE*24
#define WEEK (DAY*7)
#define MONTH DAY*30
#define YEAR MONTH*12

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //    Step12 *step12 = [[Step12 alloc] init:13];
    //    [step12 rainDrops];
    //    Step13 *step13 = [[Step13 alloc] init];
    //    [step13 addStudentWithName:@"Thi" andGrade:[NSNumber numberWithInteger:3]];
    //    [step13 addStudentWithName:@"Thien" andGrade:[NSNumber numberWithInteger:2]];
    //    [step13 addStudentWithName:@"Thi2" andGrade:[NSNumber numberWithInteger:2]];
    //    [step13 addStudentWithName:@"thi3" andGrade:[NSNumber numberWithInteger:3]];
    //    [step13 addStudentWithName:@"thin" andGrade:[NSNumber numberWithInteger:1]];
    //    [step13 addStudentWithName:@"Thinh" andGrade:[NSNumber numberWithInteger:2]];
    //
    //
    //    NSDictionary<NSArray * , NSNumber *> *result = [step13 sort];
    //    NSLog(@"%@",result);
    //      NSDictionary<NSNumber*, NSArray* > *old = @{ @1 : @[ @"W", @"G" ] };
    //        Step14 *step14 = [[Step14 alloc] init];
    //        NSDictionary<NSString *, NSNumber *> *results = [step14 transform:old];
    //     Step15 *step15 = [[Step15 alloc] init];
    //    BOOL test = [step15 isIsogram:@"thine"];
    //    if(test){
    //        NSLog(@"oke");
    //    }
    //    else{
    //        NSLog(@"not oke");
    //    }
    //step16_LastForToDay *step16 = [[step16_LastForToDay alloc] init];
    //NSArray *inputArray = @[@0, @2, @[@[@2, @3], @8, @100, @4, @[@[@50]]], @-2];
    //
    //    NSLog(@"%@",[step16 tranfers:inputArray]);
    
    
    typedef NS_ENUM(NSInteger, periodTime){
         periodTimeSECOND,
         periodTimeMinute,
         periodTimeHouse,
         periodTimeDay,
         periodTimeWeek,
         periodTimeMonth,
        
    };
    long long timeStamp = (long long)([[NSDate date] timeIntervalSince1970]);
    long long diffTimeStamp;
    long long input = timeStamp + 86000;
    diffTimeStamp = abs(timeStamp - input);
    long long seconds =diffTimeStamp;
    
    NSLog(@"%tu and %tu",seconds, DAY );
    NSLog(@"%tu" ,MONTH);
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:input];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc]init];
    [dateformatter setDateFormat:@"dd-MM-yyyy"];
    NSString *dateString=[dateformatter stringFromDate:date];
    periodTime whatTime;
    ( seconds > MONTH)? whatTime = periodTimeMonth
    :( seconds > WEEK)? whatTime = periodTimeWeek
    :(seconds > DAY)?   whatTime = periodTimeDay
    :(seconds > HOUSE)? whatTime = periodTimeHouse
    :(seconds > MINUTE)?whatTime = periodTimeMinute
    :(seconds > SECOND)? whatTime = periodTimeSECOND
    : 7;
    
    switch ( whatTime ){
            
            
        case periodTimeSECOND:
            if (timeStamp > input) {
                NSLog(@"just now"); break;
            }
            else{
                NSLog(@"little bit"); break;
            }
            
        case periodTimeMinute:
            if (timeStamp > input) {
                NSInteger minute = MINUTE;
                NSUInteger result = seconds/minute;
                NSLog(@"%tu minutes before", result); break;
            }
            else{
                NSInteger minute = MINUTE;
                NSUInteger result = seconds/minute;
                NSLog(@"%tu minutes after", result); break;
            }
            
            
        case periodTimeHouse:
            if (timeStamp > input) {
                NSInteger house = HOUSE;
                NSUInteger result = seconds/house;
                NSLog(@"%tu house before ", result); break;
            }
            else{
                NSInteger house = HOUSE;
                NSUInteger result = seconds/house;
             
                NSLog(@"%tu house after", result); break;
            }
        case periodTimeDay:
            
            if (timeStamp > input) {
                
                NSInteger day = DAY;
                NSUInteger result = seconds/day;
                NSLog(@"%tu day before", result); break;
            }
            else{
                NSInteger day = DAY;
                NSUInteger result = seconds/day;
                NSLog(@"%tu day after", result); break;
            }
        case periodTimeWeek:
            if (timeStamp > input) {
                NSInteger week = WEEK;
                NSUInteger result = seconds/week;
                NSLog(@"%tu week before", result); break;
            }
            else{
                NSInteger week = WEEK;
                NSUInteger result = seconds/week;
                NSLog(@"%tu week after", result); break;
            }
        case periodTimeMonth:
            
           
            NSLog(@"%@",dateString); break;
    }
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
