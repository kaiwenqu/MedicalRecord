//
//  UWViewController.m
//  MedicalRecord
//
//  Created by Kevin Qu on 4/4/13.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import "UWViewController.h"
#import "RegisterController.h"

@interface UWViewController ()

@end

@implementation UWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return TRUE;
}

@end
