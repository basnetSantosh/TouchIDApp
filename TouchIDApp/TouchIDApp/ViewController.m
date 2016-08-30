//
//  ViewController.m
//  TouchIDApp
//
//  Created by Tensab San on 8/29/16.
//  Copyright © 2016 Tensab San. All rights reserved.
//

#import "ViewController.h"
#import <LocalAuthentication/LocalAuthentication.h>
#import "TouchIDViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)login:(id)sender {
    
    
    
}

- (IBAction)touchLogin:(id)sender {
    
    NSString *reason = @"Please user the finger print to login";
    LAContext *context;
    
    context = [[LAContext alloc] init];
    NSError *myError;
    
    if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&myError]) {
        
        [context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics localizedReason:reason reply:^(BOOL success, NSError * _Nullable error) {
           
            if (success){
                
                NSLog(@"Touch ID authentication was successful.");
                dispatch_async(dispatch_get_main_queue(), ^{
                    TouchIDViewController *tvc = [self.storyboard instantiateViewControllerWithIdentifier:@"touch"];
                    [self presentViewController:tvc animated:YES completion:nil];
//                    [[self navigationController] pushViewController:tvc animated:YES];
                    NSLog(@"what the heck man");
                });
                
            }
            else {
                
                NSLog(@"Touch ID authentication failed.");
            }
            
        }];
        
    }
    else {
        NSLog(@"Touch Id can not be used in this phone");
    }

    
}

@end
