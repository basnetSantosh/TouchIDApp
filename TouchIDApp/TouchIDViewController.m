//
//  TouchIDViewController.m
//  TouchIDApp
//
//  Created by Tensab San on 8/29/16.
//  Copyright © 2016 Tensab San. All rights reserved.
//

#import "TouchIDViewController.h"
#import "ViewController.h"

@interface TouchIDViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation TouchIDViewController

//turn off scrolling so that we can see from top
- (void)viewDidLoad {
    [super viewDidLoad];

    [self.textView setScrollEnabled:NO];

}

//turn on scrolling so that we can sscroll
-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.textView setScrollEnabled:YES];
}
- (IBAction)backButton:(id)sender {
    ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"main"];
    [self presentViewController:vc animated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
