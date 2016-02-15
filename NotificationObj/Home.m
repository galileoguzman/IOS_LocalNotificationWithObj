//
//  ViewController.m
//  NotificationObj
//
//  Created by Galileo Guzman on 15/02/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self initController];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initController{
    
    // IMAGE
    self.imgSuperHero.hidden = YES;
    
    // USER INFO FOR NOTIFICATION
    
    NSDictionary *user_info = @{
                                @"name" : [NSString stringWithFormat:@"Galileo"],
                                @"surname" : [NSString stringWithFormat:@"Guzmán"],
                                @"job title" : [NSString stringWithFormat:@"Full Stack Engineer"],
                                @"age" : [NSNumber numberWithInt:26],
                                };
    
    // NOTIFICATION SETUP
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.fireDate = [NSDate dateWithTimeIntervalSinceNow:6];
    notification.alertBody = @"This is local notification!";
    notification.timeZone = [NSTimeZone defaultTimeZone];
    notification.soundName = @"pum.mp3";
    
    // ADD USER INFO FOR SEND INTO NOTIFICATION
    notification.userInfo = user_info;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}

@end
