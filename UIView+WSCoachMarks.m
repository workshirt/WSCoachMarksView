//
//  UIView+WSCoachMarksAdditions.m
//
//
//  Created by Fawkes Wei on 4/18/13.
//  Copyright (c) 2013 Gogolook. All rights reserved.
//

#import "UIView+WSCoachMarks.h"

@implementation UIView (WSCoachMarks)

- (CGRect)rectToMarkInView:(UIView *)view {
    return [self rectToMarkInView:view withInset:UIEdgeInsetsZero];
}

- (CGRect)rectToMarkInView:(UIView *)view withInset:(UIEdgeInsets )inset {
    return UIEdgeInsetsInsetRect([self convertRect:self.bounds toView:view], inset);
}

@end
