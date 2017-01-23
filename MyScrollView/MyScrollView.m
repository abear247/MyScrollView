//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Alex Bearinger on 2017-01-23.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView


-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panMethod:)];
        [self addGestureRecognizer:pan];
        self.rootView = [[UIView alloc] initWithFrame:self.frame];
        self.rootView.translatesAutoresizingMaskIntoConstraints = NO;
        UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
        redView.backgroundColor = [UIColor redColor];
        UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40,400,200,150)];
        blueView.backgroundColor = [UIColor blueColor];
        UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150,150,150,200)];
        greenView.backgroundColor = [UIColor greenColor];
        UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100,600,180,150)];
        yellowView.backgroundColor = [UIColor yellowColor];
        [self addSubview:self.rootView];
        [self.rootView addSubview:redView];
        [self.rootView addSubview:blueView];
        [self.rootView addSubview:greenView];
        [self.rootView addSubview:yellowView];
        self.contentSize = CGSizeMake(self.frame.size.width, CGRectGetMaxY(yellowView.frame));
        
    }
        
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)panMethod:(UIPanGestureRecognizer *)sender{
    CGPoint translation = [sender translationInView:self];
    CGRect frame = self.frame;
    frame.origin.y += translation.y;
    if(frame.origin.y > 0)
        frame.origin = CGPointMake(frame.origin.x, 0);
    if((frame.origin.y + translation.y) > self.contentSize.height)
        frame.origin = CGPointMake(frame.origin.x, self.contentSize.height);
    self.frame = frame;
    
    
    [sender setTranslation:CGPointZero inView:self];
}

@end
