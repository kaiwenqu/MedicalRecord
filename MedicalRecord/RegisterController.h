//
//  RegisterController.h
//  MedicalRecord
//
//  Created by Kevin Qu on 4/4/13.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterController : UIViewController



//-(IBAction)back:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *username;

@end
