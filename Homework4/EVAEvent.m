//
//  EVAEvent.m
//  Homework4
//
//  Created by Admin on 29.01.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "EVAEvent.h"

@implementation EVAEvent

- (instancetype)initWithEventID:(NSString*)eventID eventName:(NSString*)eventName eventDate:(NSDate*)eventDate{
    self = [super init];
    if (!self) return nil;
    self.eventID = eventID;
    self.eventName = eventName ;
    self.eventDate = eventDate;
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        self.eventID = [aDecoder decodeObjectForKey:@"eventID"];
        self.eventName = [aDecoder decodeObjectForKey:@"eventName"];
        self.eventDate = [aDecoder decodeObjectForKey:@"eventDate"];
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.eventID forKey:@"eventID"];
    [aCoder encodeObject:self.eventName forKey:@"eventName"];
    [aCoder encodeObject:self.eventDate forKey:@"eventDate"];
}
@end
