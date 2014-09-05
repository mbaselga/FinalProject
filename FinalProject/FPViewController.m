//
//  FPViewController.m
//  FinalProject
//
//  Created by Marc Baselga on 03/10/13.
//  Copyright (c) 2013 Marc Baselga  Garriga. All rights reserved.
//

#import "FPViewController.h"

@interface FPViewController ()
@property(strong, nonatomic) NSMutableDictionary*userDataMutableDictionary;
@property (strong, nonatomic) IBOutlet UITextField *userNameFT;
@property (strong, nonatomic) IBOutlet UITextField *passwordFT;

@property (strong, nonatomic) IBOutlet UILabel *incorrectUserLabel;
@property (strong, nonatomic) IBOutlet UIButton *continueButton;
- (IBAction)signUpButton:(id)sender;

@end

@implementation FPViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.userNameFT.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.passwordFT.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.userDataMutableDictionary = [[NSMutableDictionary alloc] init];
    
  self.userDataMutableDictionary = [[NSUserDefaults standardUserDefaults] objectForKey:@"Userss"];
    [self.continueButton setHidden:YES];
    [self.incorrectUserLabel setHidden:YES];
    [self.userNameFT resignFirstResponder];
    [self.passwordFT resignFirstResponder];
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)logInButton:(id)sender {
    
    if([[self.userDataMutableDictionary valueForKey:self.userNameFT.text] isEqualToString:self.passwordFT.text]){
        [self.continueButton setHidden:NO];
         [self.incorrectUserLabel setHidden:YES];
    }
    else{
        [self.continueButton setHidden:YES];
        self.incorrectUserLabel.textColor = [UIColor redColor];
        [self.incorrectUserLabel setHidden:NO];

    }
    
   
    
    
}


- (IBAction)signUpButton:(id)sender {
    
    NSLog(@"sign up has been pressed");
    NSString*name =self.userNameFT.text;
    NSString*password =self.passwordFT.text;
    NSLog(@"name: %@", name);
     NSLog(@"password: %@", password);
    
    [self.userDataMutableDictionary setObject:password forKey:name];
    
 [[NSUserDefaults standardUserDefaults] setObject:self.userDataMutableDictionary forKey:@"Userss"];
    [self.incorrectUserLabel setHidden:YES];
    
    NSLog(@"%@",self.userDataMutableDictionary);
}
@end
