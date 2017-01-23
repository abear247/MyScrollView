//
//  ViewController.m
//  MyScrollView
//
//  Created by Alex Bearinger on 2017-01-23.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()
@property (nonatomic) MyScrollView *myScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)viewDidAppear:(BOOL)animated{
//    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panMethod:)];
//    [self.view addGestureRecognizer:pan];
    self.myScrollView = [[MyScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.myScrollView];
    
    
}

//-(void)panMethod:(UIPanGestureRecognizer *)sender{
//    CGPoint translation = [sender translationInView:self.view];
//    CGPoint oldCenter = CGPointMake(sender.view.bounds.size.width/2, sender.view.bounds.size.height/2);
//    CGPoint newCenter = CGPointMake(oldCenter.x, oldCenter.y+translation.y);
//    if (newCenter.y < 0)
//        newCenter.y = 0;
//    if (newCenter.y > self.myScrollView)
//    sender.view.center = newCenter;
//    [sender setTranslation:CGPointZero inView:self.view];
//}

@end
