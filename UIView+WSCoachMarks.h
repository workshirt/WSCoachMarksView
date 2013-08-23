//
//  UIView+WSCoachMarksAdditions.h
//  
//
//  Created by Fawkes Wei on 4/18/13.
//  Copyright (c) 2013 Gogolook. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
    ## Usage Example
 
     NSArray *coachMarks = @[
             @{
                 @"rect": [NSValue valueWithCGRect:[button rectToMarkInView:self.view]],
                 @"caption": @"This is some awesome button!"
             }
         ];
 
     WSCoachMarksView *coachMarksView = [[WSCoachMarksView alloc] initWithFrame:self.view.frame coachMarks:coachMarks];
     [self.view addSubview:coachMarksView];
     [coachMarksView start];
 */

@interface UIView (WSCoachMarks)

- (CGRect)rectToMarkInView:(UIView *)view;
- (CGRect)rectToMarkInView:(UIView *)view withInset:(UIEdgeInsets )inset;

@end
