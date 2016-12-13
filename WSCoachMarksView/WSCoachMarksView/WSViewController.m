//
//  WSViewController.m
//  WSCoachMarksView
//
//  Created by Fawkes Wei on 4/18/13.
//  Copyright (c) 2013 Workshirt. All rights reserved.
//

#import "WSViewController.h"

#import "WSCoachMarksView.h"
#import "UIView+WSCoachMarks.h"

@interface WSViewController ()

@end

@implementation WSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    NSArray *coachMarks = @[
                            @{
                                @"rect": [NSValue valueWithCGRect:[self.topButton rectToMarkInView:self.view]],
                                @"caption": @"This is top button!"
                                },
                            @{
                                @"rect": [NSValue valueWithCGRect:[self.bottomButton rectToMarkInView:self.view withInset:UIEdgeInsetsMake(-10, -10, -10, -10)]],
                                @"caption": @"This is bottom button! (With UIEdgeInsets)"
                                },
                            ];
    
    WSCoachMarksView *coachMarksView = [[WSCoachMarksView alloc] initWithFrame:self.view.frame coachMarks:coachMarks];
    [self.view addSubview:coachMarksView];
    [coachMarksView start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
