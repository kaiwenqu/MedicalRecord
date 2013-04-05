//
//  RegisterController.m
//  MedicalRecord
//
//  Created by Kevin Qu on 4/4/13.
//  Copyright (c) 2013 Kevin. All rights reserved.
//

#import "RegisterController.h"
#import "sqlite3.h"
@interface RegisterController ()


@end



@implementation RegisterController

@synthesize email = _email;
@synthesize password = _password;
@synthesize username = _username;

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
}


@end
