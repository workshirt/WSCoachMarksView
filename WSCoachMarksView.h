//
//  WSCoachMarksView.h
//  Version 0.2
//
//  Created by Dimitry Bentsionov on 4/1/13.
//  Copyright (c) 2013 Workshirt, Inc. All rights reserved.
//

// This code is distributed under the terms and conditions of the MIT license.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <UIKit/UIKit.h>

#ifndef WS_WEAK
  #if __has_feature(objc_arc_weak)
    #define WS_WEAK weak
  #elif __has_feature(objc_arc)
    #define WS_WEAK unsafe_unretained
  #else
    #define WS_WEAK assign
  #endif
#endif

@protocol WSCoachMarksViewDelegate;

@interface WSCoachMarksView : UIView

@property (nonatomic, WS_WEAK) id<WSCoachMarksViewDelegate> delegate;
@property (nonatomic, retain) NSArray *coachMarks;
@property (nonatomic, retain) UILabel *lblCaption;
@property (nonatomic, retain) UIColor *maskColor;
@property (nonatomic) CGFloat animationDuration;
@property (nonatomic) CGFloat cutoutRadius;
@property (nonatomic) CGFloat maxLblWidth;
@property (nonatomic) CGFloat lblSpacing;
@property (nonatomic) BOOL enableContinueLabel;

- (id)initWithFrame:(CGRect)frame coachMarks:(NSArray *)marks;
- (void)start;

@end

@protocol WSCoachMarksViewDelegate <NSObject>

@optional
- (void)coachMarksView:(WSCoachMarksView*)coachMarksView willNavigateToIndex:(NSInteger)index;
- (void)coachMarksView:(WSCoachMarksView*)coachMarksView didNavigateToIndex:(NSInteger)index;
- (void)coachMarksViewWillCleanup:(WSCoachMarksView*)coachMarksView;
- (void)coachMarksViewDidCleanup:(WSCoachMarksView*)coachMarksView;

@end