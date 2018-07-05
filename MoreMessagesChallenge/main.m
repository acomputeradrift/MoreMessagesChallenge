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
        
        // create an instance of todays date in receiver laterDate
        
        NSDate *laterDate = [NSDate date];
        
        // creates an instance of (and initializes) NSDateComoponents and passes in the arguments to receiver comps
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1977];
        [comps setMonth:11];
        [comps setDay:19];
        [comps setHour:13];
        [comps setMinute:10];
        [comps setSecond:0];
        // creates an instance of (and initializes) NSCalendar pointer g
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        // creates an instance of NSDate dateOfBirth and calls method dateFromComponents with argument comps to receiver g
        NSDate *dateOfBirth = [g dateFromComponents:comps];
   
        
        // calculation from dateOfBirth to laterDate in seconds using timeIntervalSinceDate method
        double secondsSinceBirthDate = [laterDate timeIntervalSinceDate:dateOfBirth];
             NSLog(@"I have been alive for %f seconds", secondsSinceBirthDate);
    }
    return 0;
}

