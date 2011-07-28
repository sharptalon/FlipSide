//
//  BackViewController.m
//  FlipSide
//
//  This is a sample controller representing a back page in the application.
//  It just displays the page number, and throws up a dialog box when the "Done" button is pressed,
//  via the flipsideViewControllerIsFinishing: method
//  For a real app, the flipsideViewControllerIsFinishing: method would be used to validate the
//  user's input, returning NO and displaying some kind of error message in the input is not valid,
//  or updating the data model and returning YES if the input is valid.
//
//  Created by Mark A. Kolb on 7/7/11.
//  Copyright 2011 Sharp Talon Software. All rights reserved.
//

#import "BackViewController.h"

@implementation BackViewController

@synthesize numberLabel = _numberLabel;

- (id)initWithPageNumber:(NSInteger)page {
    self = [super init];
    if (self) {
        _page = page;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [_numberLabel setText:[NSString stringWithFormat:@"%d", _page + 1]];
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

- (BOOL)flipsideViewControllerIsFinishing:(FlipsideViewController *)controller {
    NSString *title = [NSString stringWithFormat:@"Done with Back %d", _page + 1];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    [alert release];
    return YES;
}

@end
