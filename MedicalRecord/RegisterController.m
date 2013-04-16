//
//  RegisterController.m
//  MedicalRecord
//
//  Created by Kevin Qu on 4/4/13.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import "RegisterController.h"
#import "sqlite3.h"
#import "MedicalInfoController.h"
#import "SBJson.h"
@interface RegisterController ()


@end



@implementation RegisterController

@synthesize email = _email;
@synthesize password = _password;
@synthesize repeatPassword = _repeatPassword;
@synthesize warning = _warning;

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
    
    /*
    int result = sqlite3_open("/Users/kevinqu/Desktop/Naive/MedicalRecord", &database);
    if(result == SQLITE_OK){
        NSLog(@"success");
    }
     */


    
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

- (IBAction)registerInDatabase {
    /*
    sqlite3 *database;
    int a = sqlite3_open("/Users/kevinqu/Desktop/Naive/MedicalRecord/MedicalRecord/record", &database);
    NSLog(@"%i\n", a);
    NSLog(@"%i\n", SQLITE_OK);
    NSLog(@"%@\n", self.username.text);
    NSMutableString *insert = [[NSMutableString alloc] init];
    [insert appendString:@"insert into patient values(\""];

    NSString *username = self.username.text;
    NSString *password = self.password.text;
    NSString *email = self.email.text;
    //NSString *insert = @"insert into patient values(\"" +
    //NSLog(@"%@\n", insert);
    [insert appendString: username];
    [insert appendString: @"\", \""];
    [insert appendString: email];
    [insert appendString: @"\", \""];
    [insert appendString: password];
    [insert appendString: @"\");"];
    
    NSLog(@"%@\n", insert);
    const char *createSQL = [insert UTF8String];
    char *errormsg;
    int result = sqlite3_exec(database, createSQL, NULL, NULL, &errormsg);
    NSLog(@"%i\n", result);
    sqlite3_close(database);
    */
    
    //UIViewController *sub = [[UIViewController alloc] initWithNibName:@"MedicalInfo" bundle:[NSBundle mainBundle]];
    //[self.view addSubview:sub.view];
    if(![self.password.text isEqualToString: self.repeatPassword.text]){
        self.warning.text = @"Password is not matching Repeat Password";
        return;
    }else if([self.email.text isEqualToString: @""]){
        self.warning.text = @"Email can't be empty";
        return;
    }else{
        SBJsonWriter *json = [[SBJsonWriter alloc] init];
        NSDictionary *data = [NSDictionary dictionaryWithObjectsAndKeys:self.email.text, @"email",  self.password.text, @"password",  nil];
        NSString *command = [json stringWithObject:data];
        NSLog(@"%@\n", command);
        [self performSegueWithIdentifier:@"info"  sender:self];
    }
}


@end
