//
//  ViewController.m
//  NSNotification
//
//  Created by Marcelo Sampaio on 10/26/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // set up Notification center
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationAction:) name:@"notificationObserver" object:nil];
    

}


#pragma mark - Notification Selectors
- (void) notificationAction:(NSString *)notificationData {

    NSLog(@"notificationAction ***** data = %@",notificationData);

    
}




#pragma mark - Navigation
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"prepareForSegue identifier = %@",segue.identifier);
}
@end
