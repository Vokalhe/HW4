//
//  AppDelegate.m
//  Homework4
//
//  Created by Admin on 28.01.16.
//  Copyright © 2016 Ehlakov Victor. All rights reserved.
//

#import "AppDelegate.h"
#import "EVAEvent.h"
@interface AppDelegate ()
@property (nonatomic) NSMutableArray *arrayOurEvents;
@end



@implementation AppDelegate

-(instancetype) init{
    self = [super init];
    if(self){
        _arrayOurEvents = [[NSMutableArray alloc]init];
    }
    return self;
}

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(nullable NSDictionary
                                                                                 *)launchOptions {
    
   
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey: @"events"];
    NSMutableArray *arrOurEvents = [NSKeyedUnarchiver unarchiveObjectWithData: data];
    
    NSString *nameEvent= [NSString stringWithUTF8String:__PRETTY_FUNCTION__];
 
    
    EVAEvent *reception = [[EVAEvent alloc] initWithEventID:[[NSUUID UUID] UUIDString] eventName:nameEvent eventDate: [NSDate date]];
    
    [arrOurEvents addObject: reception];
    
    if (arrOurEvents){
        for (EVAEvent *reception in arrOurEvents) {
            NSLog(@"%@", reception);
        }
    }
    //NSLog(@"%s", __PRETTY_FUNCTION__);
    
    return YES; }
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary
                                                                                *)launchOptions {
    
    NSString *nameEvent= [NSString stringWithUTF8String:__PRETTY_FUNCTION__];
    EVAEvent *reception = [[EVAEvent alloc] initWithEventID:[[NSUUID UUID] UUIDString] eventName:nameEvent eventDate:[NSDate date]];
    
    [_arrayOurEvents addObject: reception];
    
   
    //NSLog(@"%s", __PRETTY_FUNCTION__); 
    
    return YES; }


- (void)applicationDidBecomeActive:(UIApplication *)application {
    
    NSString *nameEvent= [NSString stringWithUTF8String:__PRETTY_FUNCTION__];
    EVAEvent *reception = [[EVAEvent alloc] initWithEventID:[[NSUUID UUID] UUIDString] eventName:nameEvent eventDate:[NSDate date]];
    
    [_arrayOurEvents addObject: reception];
    
    //NSLog(@"%s", __PRETTY_FUNCTION__);
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    
    NSString *nameEvent= [NSString stringWithUTF8String:__PRETTY_FUNCTION__];
    EVAEvent *reception = [[EVAEvent alloc] initWithEventID:[[NSUUID UUID] UUIDString] eventName:nameEvent eventDate:[NSDate date]];
    
    [_arrayOurEvents addObject: reception];
    
    //NSLog(@"%s", __PRETTY_FUNCTION__);
    
    NSData* data = [NSKeyedArchiver archivedDataWithRootObject: _arrayOurEvents];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"events"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    
    NSString *nameEvent= [NSString stringWithUTF8String:__PRETTY_FUNCTION__];
    EVAEvent *reception = [[EVAEvent alloc] initWithEventID:[[NSUUID UUID] UUIDString] eventName:nameEvent eventDate:[NSDate date]];
    
    [_arrayOurEvents addObject: reception];
    
    //NSLog(@"%s", __PRETTY_FUNCTION__);
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    
    NSString *nameEvent= [NSString stringWithUTF8String:__PRETTY_FUNCTION__];
    EVAEvent *reception = [[EVAEvent alloc] initWithEventID:[[NSUUID UUID] UUIDString] eventName:nameEvent eventDate:[NSDate date]];
    
    [_arrayOurEvents addObject: reception];
    
    //NSLog(@"%s", __PRETTY_FUNCTION__);
}


- (void)applicationWillTerminate:(UIApplication *)application {
    
    NSString *nameEvent= [NSString stringWithUTF8String:__PRETTY_FUNCTION__];
    EVAEvent *reception = [[EVAEvent alloc] initWithEventID:[[NSUUID UUID] UUIDString] eventName:nameEvent eventDate:[NSDate date]];
    
    [_arrayOurEvents addObject: reception];
    
    //NSLog(@"%s", __PRETTY_FUNCTION__);
}
@end
