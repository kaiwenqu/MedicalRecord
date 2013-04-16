//
//  MedicalInfoController.h
//  MedicalRecord
//
//  Created by Kevin Qu on 4/9/13.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MedicalInfoController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *dob;

@property (weak, nonatomic) IBOutlet UITextField *gender;

@property (weak, nonatomic) IBOutlet UITextField *addr1;

@property (weak, nonatomic) IBOutlet UITextField *addr2;

@property (weak, nonatomic) IBOutlet UITextField *telephone;

@property (weak, nonatomic) IBOutlet UITextField *emergency;

@end
