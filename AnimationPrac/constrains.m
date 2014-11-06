//
//  constrains.m
//  AnimationPrac
//
//  Created by Hao Li on 11/5/14.
//  Copyright (c) 2014 Inspired. All rights reserved.
//

#import "constrains.h"

@implementation constrains
/*
 NSDictionary *viewDictionary = @{@"logoName" : _logoName,
 @"fbLoginView" : _fbLoginView,
 @"twitterLoginView" : _twitterLoginView
 };
 
 // Logo label from view top
 NSString *heightConstraints = [NSString stringWithFormat:@"V:[logoName]-%f-|", viewHeight * 0.618];
 [self addConstraints:[NSLayoutConstraint
 constraintsWithVisualFormat:heightConstraints
 options:0
 metrics:nil
 views:viewDictionary]];
 
 // Logo label center horizonal
 [self addConstraint:[NSLayoutConstraint
 constraintWithItem:_logoName
 attribute:NSLayoutAttributeCenterX
 relatedBy:NSLayoutRelationEqual
 toItem:self
 attribute:NSLayoutAttributeCenterX
 multiplier:1.0
 constant:0.0]];
 */

// Change opacity of FB login button
/*
for (id loginObject in self.fbLoginView.subviews) {
if ([loginObject isKindOfClass:[UIButton class]]) {
UIButton *button = loginObject;
button.alpha = 0.5;
}
}
*/

/*
self.topBanner.translatesAutoresizingMaskIntoConstraints = NO;
self.topBanner.backgroundColor = [UIColor colorWithRed:0.0f
green:197.0f/255.0
blue: 205.0f/255.0
alpha:1];
*/


//_fbLoginView.translatesAutoresizingMaskIntoConstraints = NO;

/*
// FB login button from view bottom
heightConstraints = [NSString stringWithFormat:@"V:[fbLoginView]-%f-|", viewHeight * 0.618 * 0.618];
[self addConstraints:[NSLayoutConstraint
constraintsWithVisualFormat:heightConstraints
options:0
metrics:nil
views:viewDictionary]];

// FB login button from view left
heightConstraints = [NSString stringWithFormat:@"H:|-%f-[fbLoginView]", viewWidth * 0.382 * 0.5];
[self addConstraints:[NSLayoutConstraint
constraintsWithVisualFormat:heightConstraints
options:0
metrics:nil
views:viewDictionary]];

// FB login button from view right
heightConstraints = [NSString stringWithFormat:@"H:[fbLoginView]-%f-|", viewWidth * 0.382 * 0.5];
[self addConstraints:[NSLayoutConstraint
constraintsWithVisualFormat:heightConstraints
options:0
metrics:nil
views:viewDictionary]];

// FB login button center horizonal
[self addConstraint:[NSLayoutConstraint
constraintWithItem:_fbLoginView
attribute:NSLayoutAttributeCenterX
relatedBy:NSLayoutRelationEqual
toItem:self
attribute:NSLayoutAttributeCenterX
multiplier:1.0
constant:0.0]];

// twitter login button from view bottom
heightConstraints = [NSString stringWithFormat:@"V:[fbLoginView]-%f-[twitterLoginView]", 20.0];
[self addConstraints:[NSLayoutConstraint
constraintsWithVisualFormat:heightConstraints
options:0
metrics:nil
views:viewDictionary]];


// twitter login button from view left
heightConstraints = [NSString stringWithFormat:@"H:|-%f-[twitterLoginView]", viewWidth * 0.382 * 0.5];
[self addConstraints:[NSLayoutConstraint
constraintsWithVisualFormat:heightConstraints
options:0
metrics:nil
views:viewDictionary]];

// twitter login button from view right
heightConstraints = [NSString stringWithFormat:@"H:[twitterLoginView]-%f-|", viewWidth * 0.382 * 0.5];
[self addConstraints:[NSLayoutConstraint
constraintsWithVisualFormat:heightConstraints
options:0
metrics:nil
views:viewDictionary]];

// twitter login button center horizonal
[self addConstraint:[NSLayoutConstraint
constraintWithItem:_twitterLoginView
attribute:NSLayoutAttributeCenterX
relatedBy:NSLayoutRelationEqual
toItem:self
attribute:NSLayoutAttributeCenterX
multiplier:1.0
constant:0.0]];

[self addConstraint:[NSLayoutConstraint
constraintWithItem:_twitterLoginView
attribute:NSLayoutAttributeWidth
relatedBy:NSLayoutRelationEqual
toItem:_fbLoginView
attribute:NSLayoutAttributeWidth
multiplier:1.0
constant:0.0
]];

[self addConstraint:[NSLayoutConstraint
constraintWithItem:_twitterLoginView
attribute:NSLayoutAttributeHeight
relatedBy:NSLayoutRelationEqual
toItem:_fbLoginView
attribute:NSLayoutAttributeHeight
multiplier:1.0
constant:0.0
]];
*/

/*
 [self.topBanner addConstraint:[NSLayoutConstraint
 constraintWithItem:self.logoName
 attribute:NSLayoutAttributeCenterY
 relatedBy:NSLayoutRelationEqual
 toItem:self.topBanner
 attribute:NSLayoutAttributeCenterY
 multiplier:1.0
 constant:0.0]];
 
 [self.topBanner addConstraint:[NSLayoutConstraint
 constraintWithItem:self.topBanner
 attribute:NSLayoutAttributeHeight
 relatedBy:NSLayoutRelationEqual
 toItem:self.logoName
 attribute:NSLayoutAttributeHeight
 multiplier:1.2
 constant:0.0]];
 */

@end
