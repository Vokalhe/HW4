//
//  EVAEvent.h
//  Homework4
//
//  Created by Admin on 29.01.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EVAEvent : NSObject <NSCoding>
@property (nonatomic) NSString *eventID;
@property (nonatomic) NSString *eventName;
@property (nonatomic) NSDate *eventDate;

- (instancetype)initWithEventID:(NSString*)eventID eventName:(NSString*)eventName eventDate:(NSDate*)eventDate;
@end
