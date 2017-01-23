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
    CGPoint oldCenter = CGPointMake(sender.view.bounds.size.width/2, sender.view.bounds.size.height/2);
    CGPoint newCenter = CGPointMake(oldCenter.x, oldCenter.y+translation.y);
    if (newCenter.y < 0)
        newCenter.y = 0;
    if (newCenter.y > self.bounds.size.height)
        newCenter.y = self.bounds.size.height;
        sender.view.center = newCenter;
    [sender setTranslation:CGPointZero inView:self];
}

@end
