//
//  FlipsideViewController.m
//  FlipSide
//
//  This view controller manages the display of the back pages.
//
//  The front page view controller will create one of these and should then assign the view controller for the
//  back page to this controller's nestedController property.
//  This controller should implement the FlipsideViewNestedControllerDelegate protocol, which entails
//  defining a flipsideViewControllerIsFinishing that allows the nested to decide whether or not to flip
//  back to the front page when the Done button is pressed. This allows the back page controller to, for example,
//  do validation and, if necessary, show an error dialog rather than flip back to the front page.
//
//  Created by Mark A. Kolb on 7/7/11.
//  Copyright 2011 Sharp Talon Software. All rights reserved.
//

#import "FlipsideViewController.h"


@implementation FlipsideViewController

@synthesize delegate=_delegate;
@synthesize nestedView=_nestedView;
@synthesize nestedController=_nestedController;

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.nestedView addSubview:self.nestedController.view];
    self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];  
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

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    if ([self.nestedController flipsideViewControllerIsFinishing:self]) {
        [self.delegate flipsideViewControllerDidFinish:self];
        [self.nestedController.view removeFromSuperview];
    }
}

@end
