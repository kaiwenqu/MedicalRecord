//
//  MedicalInfoController.m
//  MedicalRecord
//
//  Created by Kevin Qu on 4/9/13.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import "MedicalInfoController.h"

@interface MedicalInfoController ()

@end

@implementation MedicalInfoController

@synthesize dob = _dob;
@synthesize gender = _gender;
@synthesize addr1 = _addr1;
@synthesize addr2 = _addr2;
@synthesize telephone = _telephone;
@synthesize emergency = _emergency;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return TRUE;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
