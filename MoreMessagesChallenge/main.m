//
//  main.m
//  MoreMessagesChallenge
//
//  Created by Jamie on 2018-07-05.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1977];
        [comps setMonth:11];
        [comps setDay:19];
        [comps setHour:13];
        [comps setMinute:10];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        NSLog(@"My date of birth is %@", dateOfBirth);
        
        // calculation f
        //double secondsSinceEarlierDate = [laterDate timeIntervalSinceDate:earlierDate];
    }
    return 0;
}

