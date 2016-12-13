//
//  UIView+WSCoachMarksAdditions.h
//  
//
//  Created by Fawkes Wei on 4/18/13.
//  Copyright (c) 2013 Gogolook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (WSCoachMarks)

- (CGRect)rectToMarkInView:(UIView *)view;
- (CGRect)rectToMarkInView:(UIView *)view withInset:(UIEdgeInsets )inset;

@end
