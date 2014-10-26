//
//  Option2ViewController.m
//  NSNotification
//
//  Created by Marcelo Sampaio on 10/26/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "Option2ViewController.h"

@interface Option2ViewController ()

@end

@implementation Option2ViewController

@synthesize segmentedControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UI Actions
- (IBAction)segmentSelected:(id)sender {


    NSString *notificationMessage=[NSString stringWithFormat:@"Selected Segment is %d",self.segmentedControl.selectedSegmentIndex];
    NSLog(@"--------> %@",notificationMessage);
    
    // Post notification
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notificationObserver" object:notificationMessage];
}



@end
