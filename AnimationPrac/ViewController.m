//
//  ViewController.m
//  AnimationPrac
//
//  Created by Hao Li on 10/25/14.
//  Copyright (c) 2014 Inspired. All rights reserved.
//

#import "ViewController.h"

NSString *paragraph1 = @"One of the coolest things about iPhone apps is how animated many of them are. You can have views fly across the screen, fade in or fade, out, rotate around, and much more! Not only does this look cool, but animations are good indicators that something is going on that a user should pay attention to, such as more info becoming available.The best part about animation on the iPhone is that it is incredibly easy to implement programmatically! It’s literally just a couple lines of code and you’re up and running.In this UIView tutorial, you’ll get a chance to go hands-on with UIView animation to create a neat little app about going on a picnic. The picnic basket opens in a neat animated way, and then you get to look what’s inside – and take decisive action!In the process, you will learn several stuff, among other, how to use UIView animations in both the standard way and the newest iOS 6 manner. Also you will be learning how to chain UIView animations and how to manage animations and layout positions and size in both portrait and landscape orientations thanx to the auto layout feature.So grab your picnic basket and let’s get started!";

NSString *paragraph2 = @"One of the coolest things about iPhone apps is how animated many of them are. You can have views fly across the screen, fade in or fade, out, rotate around, and much more! Not only does this look cool, but animations are good indicators that something is going on that a user should pay attention to, such as more info becoming available.The best part about animation on the iPhone is that it is incredibly easy to implement programmatically! It’s literally just a couple lines of code and you’re up and running.In this UIView tutorial, you’ll get a chance to go hands-on with UIView animation to create a neat little app about going on a picnic. The picnic basket opens in a neat animated way, and then you get to look what’s inside – and take decisive action!In the process, you will learn several stuff, among other, how to use UIView animations in both the standard way and the newest iOS 6 manner. Also you will be learning how to chain UIView animations and how to manage animations and layout positions and size in both portrait and landscape orientations thanx to the auto layout feature.So grab your picnic basket and let’s get started!";

NSString *paragraph3 = @"One of the coolest things about iPhone apps is how animated many of them are. You can have views fly across the screen, fade in or fade, out, rotate around, and much more! Not only does this look cool, but animations are good indicators that something is going on that a user should pay attention to, such as more info becoming available.The best part about animation on the iPhone is that it is incredibly easy to implement programmatically! It’s literally just a couple lines of code and you’re up and running.In this UIView tutorial, you’ll get a chance to go hands-on with UIView animation to create a neat little app about going on a picnic. The picnic basket opens in a neat animated way, and then you get to look what’s inside – and take decisive action!In the process, you will learn several stuff, among other, how to use UIView animations in both the standard way and the newest iOS 6 manner. Also you will be learning how to chain UIView animations and how to manage animations and layout positions and size in both portrait and landscape orientations thanx to the auto layout feature.So grab your picnic basket and let’s get started!";


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *fbButton;

@property (weak, nonatomic) IBOutlet UIButton *twitterButton;

@property UIView *view1;
@property UIView *view2;
@property UIView *view3;

@property UITextView *textView;
@property UITextView *textView1;
@property UITextView *textView3;

@property CGPoint startPoint;
@property CGPoint endPoint;
@property CGPoint originCenter;

@property double startTime;
@property double endTime;

@end

@implementation ViewController

- (IBAction)fbButtonClicked:(id)sender {
    NSLog(@"FB button clicked");
    NSLog(@"FB center is %f, %f", _fbButton.center.x, _fbButton.center.y);
}

- (IBAction)twitterButtonClicked:(id)sender {
    NSLog(@"Twitter button clicked");
    [UIView animateWithDuration:0.5 animations:^{
        _twitterButton.center = (CGPoint) {
            _twitterButton.center.x, CGRectGetMaxY(self.view.frame) + CGRectGetHeight(_twitterButton.bounds) / 2.0
        };
    }];
    float width = [UIScreen mainScreen].bounds.size.width;
    CGPoint newCenter = CGPointMake(width / 2, _fbButton.center.y);
    [UIView animateWithDuration:0.1 animations:^{
        _fbButton.center = newCenter;
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect frame = [UIScreen mainScreen].bounds;
    
    /*
    _view1 = [[UIView alloc] initWithFrame:frame];
    //_view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:_view1];
    _view2 = [[UIView alloc] initWithFrame:frame];
    //_view2.backgroundColor = [UIColor greenColor];
    _view2 = [[UIView alloc] initWithFrame:frame];
    [self.view addSubview:_view2];
    _view3 = [[UIView alloc] initWithFrame:frame];
    [self.view addSubview:_view3];
    */
    
    /*
    UIPanGestureRecognizer *pan1 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveView2:)];
    [_view2 addGestureRecognizer:pan1];
     */
    /*
    NSTextStorage* textStorage = [[NSTextStorage alloc] initWithString:article];
    
    NSLayoutManager *layoutManager = [[NSLayoutManager alloc] init];
    
    [textStorage addLayoutManager:layoutManager];
    
    NSTextContainer *textContainer3 = [[NSTextContainer alloc] initWithSize:self.view.bounds.size];
    
    [layoutManager addTextContainer:textContainer3];
    
    _textView3 = [[UITextView alloc] initWithFrame:self.view.bounds textContainer:textContainer3];
    _textView3.font = [UIFont fontWithName:@"Helvetica Neue" size:25];
    [_view3 addSubview:_textView3];
    
    _textView3.scrollEnabled = NO;
    
    NSTextContainer *textContainer = [[NSTextContainer alloc] initWithSize:self.view.bounds.size];
    
    [layoutManager addTextContainer:textContainer];
    
    _textView = [[UITextView alloc] initWithFrame:self.view.bounds textContainer:textContainer];
    _textView.font = [UIFont fontWithName:@"Helvetica Neue" size:25];
    [_view2 addSubview:_textView];
    
    _textView.scrollEnabled = NO;
    
    NSTextContainer *textContainer1 = [[NSTextContainer alloc] initWithSize:self.view.bounds.size];
    [layoutManager addTextContainer:textContainer1];
    _textView1 = [[UITextView alloc] initWithFrame:self.view.bounds textContainer:textContainer1];
    [_view1 addSubview:_textView1];
    
    _textView1.textAlignment = NSTextAlignmentJustified;
    _textView.textAlignment = NSTextAlignmentJustified;
    
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUpDown:)];

    UISwipeGestureRecognizer *swipe1 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUpDown:)];
    
    UISwipeGestureRecognizer *swipe3 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUpDown:)];
    
    [swipe setDirection:UISwipeGestureRecognizerDirectionUp];
    [swipe1 setDirection:UISwipeGestureRecognizerDirectionUp];
    [swipe3 setDirection:UISwipeGestureRecognizerDirectionUp];
    
    [_view2 addGestureRecognizer:swipe];
    [_view1 addGestureRecognizer:swipe1];
    [_view3 addGestureRecognizer:swipe3];
    
    NSTextStorage *store = [[NSTextStorage alloc]initWithString:article];
    UIFont *myFont = [UIFont fontWithName:@"Helvetica Neue" size:25];
    NSDictionary *dict = @{NSFontAttributeName : myFont};
    [store addAttributes:dict range:NSMakeRange(0, store.length - 10)];
    UIFont *myFont1 = [UIFont fontWithName:@"Helvetica Neue" size:20];
    NSDictionary *dict1 = @{NSFontAttributeName : myFont1};
    NSRange range = NSMakeRange(store.length - 10, 10);
    [store addAttributes:dict1 range:range];
    NSTextContainer *newContainer = [[NSTextContainer alloc]initWithSize:CGSizeMake(self.view.bounds.size.width, FLT_MAX)];
    NSLayoutManager *newManager = [[NSLayoutManager alloc]init];
    [newManager addTextContainer:newContainer];
    [store addLayoutManager:newManager];

    
    [newContainer setLineFragmentPadding:0.0];
    [newManager glyphRangeForTextContainer:newContainer];
    float height = [newManager usedRectForTextContainer:newContainer].size.height;
    NSLog(@"Height is %f", [newManager usedRectForTextContainer:newContainer].size.height);
    NSLog(@"Pages needed is %f", ceil(height / self.view.bounds.size.height));
     */
    NSLog(@"Frame height is %f", frame.size.height);
    NSArray *array = @[paragraph1, paragraph2, paragraph3];
    float remainHeight = frame.size.height;
    NSMutableArray *viewArray = [NSMutableArray new];
    UIView *currentView = nil;
    float containerHeight = 0;
    for (int i = 0; i < 3; i++) {
        NSTextStorage *storage = [[NSTextStorage alloc] initWithString:[array objectAtIndex:i]];
        NSLayoutManager *layoutManager = [[NSLayoutManager alloc] init];
        [storage addLayoutManager:layoutManager];
        UIFont *font = [UIFont fontWithName:@"Helvetica Neue" size:20];
        [storage addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, storage.length)];
        NSTextContainer *container = [[NSTextContainer alloc]initWithSize:CGSizeMake(frame.size.width - 10, FLT_MAX)];
        NSLog(@"==============================================");

        [layoutManager addTextContainer:container];
        [container setLineFragmentPadding:0.0];
        [layoutManager glyphRangeForTextContainer:container];
        float height = [layoutManager usedRectForTextContainer:container].size.height;
        NSLog(@"Height is %f", height);
        
        CGRect lineRect = [layoutManager lineFragmentRectForGlyphAtIndex:0 effectiveRange:nil];
        NSLog(@"point is %f, %f", lineRect.origin.x, lineRect.origin.y);
        NSLog(@"height is %f, width is %f", lineRect.size.height, lineRect.size.width);
        NSLog(@"Frame width is %f", frame.size.width);
        lineRect = [layoutManager lineFragmentRectForGlyphAtIndex:48 effectiveRange:nil];
        NSLog(@"point is %f, %f", lineRect.origin.x, lineRect.origin.y);
        NSLog(@"height is %f", lineRect.size.height);
        lineRect = [layoutManager lineFragmentRectForGlyphAtIndex:200 effectiveRange:nil];
        NSLog(@"27 line point is %f, %f", lineRect.origin.x, lineRect.origin.y);
        NSLog(@"height is %f", lineRect.size.height);

        CGFloat lineHeight = lineRect.size.height;
        
        int totalLine = (int)round(height / lineHeight);
        NSLog(@"Total line number is %d", totalLine);
        NSLog(@"line height is %f", lineHeight);
        
        [layoutManager removeTextContainerAtIndex:0];
        /*
        UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, height) textContainer:container];
        NSLog(@"height is %f", height);
        UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:frame];
        UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, height)];
        //[scrollView setContentSize:CGRectMake(0, 0, frame.size.width, height)];
        [scrollView setContentSize:CGSizeMake(frame.size.width, height)];
        [contentView addSubview:textView];
        [scrollView addSubview:contentView];
        [self.view addSubview:scrollView];
        break;
         */
        
        while (totalLine > 0) {
            if (!currentView) {
                currentView = [[UIView alloc] initWithFrame:frame];
                currentView.backgroundColor = [UIColor whiteColor];
                UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUpDown:)];
                [swipe setDirection:UISwipeGestureRecognizerDirectionUp];
                [currentView addGestureRecognizer:swipe];
                remainHeight = currentView.bounds.size.height;
                NSLog(@"Initial remainHeight is %f", remainHeight);
            }
            int linesCanPlace = (int)floor(remainHeight / lineHeight);
            NSLog(@"line can place is %d", linesCanPlace);
            int linesToPlace = MIN(linesCanPlace, totalLine);
            NSLog(@"line to place is %d", linesToPlace);
            
            if (linesToPlace < totalLine) {
                containerHeight = remainHeight;
            } else {
                containerHeight = lineHeight * linesToPlace;
            }
            
            NSLog(@"LINES Height is %f", lineHeight * linesToPlace);
            
            NSLog(@"container height is %f", containerHeight);
            
            container = [[NSTextContainer alloc] initWithSize:CGSizeMake(frame.size.width - 10, containerHeight)];
            [layoutManager addTextContainer:container];
            [container setLineFragmentPadding:0.0];
            NSLog(@"Text view start point is %f, %f", 5.0, currentView.bounds.size.height - remainHeight);
            UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(5, frame.size.height - remainHeight, frame.size.width - 10, containerHeight) textContainer:container];
            textView.textAlignment = NSTextAlignmentJustified;
            textView.pagingEnabled = YES;
            totalLine -= linesToPlace;
            remainHeight -= containerHeight;
            [textView.layoutManager ensureLayoutForTextContainer:container];
            textView.textContainerInset = UIEdgeInsetsMake(0, 0, 0, 0);
            textView.scrollEnabled = NO;
            [currentView addSubview:textView];
            NSLog(@"remain height is %f", remainHeight);
            CGRect rect = [layoutManager boundingRectForGlyphRange:NSMakeRange(0, 1) inTextContainer:container];
            NSLog(@"bound rect x is %f, y is %f", rect.origin.x, rect.origin.y);
            NSLog(@"bound rect height is %f, width is %f", rect.size.height, rect.size.width);
            
            if (remainHeight < lineHeight) {
                [viewArray addObject:currentView];
                currentView = nil;
                NSLog(@"New view added");
            } else {
                NSLog(@"remaining height is %f", remainHeight);
            }
        }
        NSLog(@"==============================================");
    }
    if (currentView) {
        [viewArray addObject:currentView];
    }
    
    for (id obj in [viewArray reverseObjectEnumerator]) {
        [self.view addSubview:obj];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}


- (void)swipeUpDown:(UISwipeGestureRecognizer *)swipe {
    if (swipe.direction == UISwipeGestureRecognizerDirectionUp) {
        NSLog(@"Swipe up");
        UIView *view = swipe.view;
        if (view == _view1) {
            NSLog(@"View1 is swiped");
        }
        if (view == _view2) {
            NSLog(@"View2 is swiped");
        }
        [UIView animateWithDuration:0.8 animations:^{
            view.center = CGPointMake(view.center.x, -600);
        }];
    }
}

- (void)moveView2:(UIPanGestureRecognizer *)pan {
    CGPoint bigViewDelta = [pan translationInView:self.view];
    CGPoint newCenter = CGPointMake(_view2.center.x, _view2.center.y + bigViewDelta.y);
    _view2.center = newCenter;
    [pan setTranslation:CGPointZero inView:self.view];
    if (pan.state == UIGestureRecognizerStateEnded) {
        CGPoint velocityOfPan = [pan velocityInView:self.view];
        CGFloat velocityOfPanAbsolute = sqrt(velocityOfPan.x * velocityOfPan.x + velocityOfPan.y * velocityOfPan.y);
        // get simple points per second
        CGPoint currentPoint = _view2.center;
        CGPoint finalPoint = CGPointMake(_view2.center.x, -600);
        CGFloat distance = sqrt((finalPoint.x - currentPoint.x) * (finalPoint.x - currentPoint.x) + (finalPoint.y - currentPoint.y) * (finalPoint.y - currentPoint.y));
        // how far to travel
        CGFloat duration = 0.5;
        CGFloat animationVelocity = velocityOfPanAbsolute / (distance / duration);
        
        [UIView animateWithDuration:duration delay:0.0 usingSpringWithDamping:1.0 initialSpringVelocity:animationVelocity options:0 animations:^{
            _view2.center = CGPointMake(_view2.center.x, -600);
        } completion:nil];    }
}

- (void)viewDidAppear:(BOOL)animated {
/*
    [UIView transitionFromView:_view2 toView:_view1 duration:2 options:UIViewAnimationOptionCurveEaseInOut completion:^(BOOL finished) {
    }];
*/
    
    /*
    // get the view that's currently showing
    UIView *currentView = _view2;
    // get the the underlying UIWindow, or the view containing the current view view
    UIView *theWindow = [currentView superview];
    // remove the current view and replace with myView1
    [currentView removeFromSuperview];
    //[theWindow addSubview:newView];
    // set up an animation for the transition between the views
    CATransition *animation = [CATransition animation];
    [animation setDuration:0.5];
    [animation setType:kCATransitionPush];
    [animation setSubtype:kCATransitionFromLeft];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [[theWindow layer] addAnimation:animation forKey:@"SwitchToView1"];
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - drag animations
/*
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touch began");
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView:self.view];
    _startPoint = touchLocation;
    _startTime = CACurrentMediaTime();
    NSLog(@"Start point is %f", _startPoint.y);
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touch cancel");
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touch moved");
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    float y = location.y;
    float originY = _startPoint.y;
    CGRect newFrame = _view2.frame;
    newFrame.origin.y = (y - originY);
    _view2.frame = newFrame;
    //NSLog(@"Center is %f, %f", _view2.center.x, _view2.center.y);
    _startTime = CACurrentMediaTime();
    NSLog(@"Current y is %f", _view2.frame.origin.y);
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touch ended");
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    float y = location.y;
    _endTime = CACurrentMediaTime();
    float speed = (_startPoint.y - y) / (_endTime - _startTime);
    NSLog(@"Start y is %f", _startPoint.y);
    NSLog(@"End y is %f", y);
    NSLog(@"Start time is %f", _startTime);
    NSLog(@"end time is %f", _endTime);
    NSLog(@"Spent time is %f", _endTime - _startTime);
    NSLog(@"Speed is %f", speed);
    
    double timeToBound = (y + [UIScreen mainScreen].bounds.size.height - _startPoint.y) / speed;
    double timeToStop = speed / deAcc;
    
    NSLog(@"Time to bound is %f", timeToBound);
    NSLog(@"Time to stop is %f", timeToStop);
    
    // Go to bound earlier than to stop
    if (timeToBound < timeToStop) {
        NSLog(@"Go to bound earlier");
        [UIView animateWithDuration:timeToBound animations:^{
            CGRect newFrame = _view2.frame;
            newFrame.origin.y = 0 - [UIScreen mainScreen].bounds.size.height;
            _view2.frame = newFrame;
        }];
    } else {
        // Stop earlier than
        NSLog(@"Stop earlier");
        float wayToGo = timeToStop * speed;
        [UIView animateWithDuration:timeToStop animations:^{
            CGRect newFrame = _view2.frame;
            newFrame.origin.y -= wayToGo;
            _view2.frame = newFrame;
        }];
        [UIView animateWithDuration:0.5 animations:^{
            CGRect frame = [UIScreen mainScreen].bounds;
            _view2.frame = frame;
            
        }];
    }
}
 */

@end
