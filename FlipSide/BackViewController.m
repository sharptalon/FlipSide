//
//  BackViewController.m
//  FlipSide
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
    [_numberLabel setText:[NSString stringWithFormat:@"%d", _page]];
    //[self.view setFrame:CGRectMake(0, 0, 320, 400)];
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
