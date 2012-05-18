//
//  TestViewController.m
//  TabBarBasicApplication
//
//  Created by Robert DeNicola on 5/18/12.
//  Copyright (c) 2012 Developmental Applications. All rights reserved.
//

#import "TestViewController.h"

@implementation TestViewController {
    
    
    UIButton *button3;
    
    
    
}

-(IBAction)btnClicked:(id)sender {
    
    
    
    
    
    
    
}


-(IBAction)actionSheet:(id)sender {
    
    
    
    UIActionSheet *popupQuery = [[UIActionSheet alloc] initWithTitle:@"Title" delegate:self cancelButtonTitle:@"Cancel Button" destructiveButtonTitle:@"Destructive Button" otherButtonTitles:@"Other Button 1", @"Other Button 2", nil];
 //   03
    popupQuery.actionSheetStyle = UIActionSheetStyleBlackOpaque;
  //  04
    [popupQuery showInView:self.view];

    
    
    
}




-(IBAction)pushIt:(id)sender {
    
    
    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Title Here"
                                                        message:@"Message here" delegate:self 
                                              cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
    
    
    
    
    
    
}



-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    
    
    UIAlertView *dismiss = [[UIAlertView alloc] initWithTitle:@"Title"
                                                      message:@"You Dismissed the Alert!"
                                                     delegate:self
                                            cancelButtonTitle:@"Cancel"
                                            otherButtonTitles:@"Done", nil];
    [dismiss show];
    
    dismiss.alertViewStyle = UIAlertViewStyleDefault;
    
    
    
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(20, 20, 200, 44); // position in the parent view and set the size of the button
    [myButton setTitle:@"Click Me!" forState:UIControlStateNormal];
    // add targets and actions
    [myButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    // add to a view
    [self.view addSubview:myButton];
    
    
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
