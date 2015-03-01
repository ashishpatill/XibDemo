//
//  ViewController.m
//  XibDemo
//
//  Created by Ashish Pisey on 3/1/15.
//  Copyright (c) 2015 Ashish Pisey. All rights reserved.
//

#import "ViewController.h"
#import "OverlayView.h"

@interface ViewController ()
{
    UIView *overlayview;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loadXib:(id)sender // load first view
{
    
    NSArray *viewArray = [[NSBundle mainBundle]loadNibNamed:@"OverlayView" owner:self options:nil];
    
    overlayview = [viewArray firstObject];
    
    UIView * firstView = [viewArray objectAtIndex:1];
    
    [overlayview setFrame:firstView.frame];
    [overlayview addSubview:firstView];
    
    [overlayview setCenter:CGPointMake(self.view.center.x, self.view.frame.size.height + overlayview.frame.size.height + 200)];

    //NSLog(@"view array %@",[[NSBundle mainBundle]loadNibNamed:@"OverlayView" owner:self options:nil]);
    
    [self.view addSubview:overlayview];
    
    [UIView animateWithDuration:2.0 animations:^{
        [overlayview setCenter:self.view.center];
    } completion:^(BOOL finished) {
        [self performSelector:@selector(removeOverlayView) withObject:nil afterDelay:2.0];
    }];
    
}

- (IBAction)loadSecondView:(UIButton *)sender // load second view
{
    NSArray *viewArray = [[NSBundle mainBundle]loadNibNamed:@"OverlayView" owner:self options:nil];
    
    overlayview = [viewArray firstObject];
    
    UIView * secondView = [viewArray objectAtIndex:2];
    
    [overlayview setFrame:secondView.frame];
    [overlayview addSubview:secondView];
    
    [overlayview setCenter:CGPointMake(self.view.center.x, self.view.frame.size.height + overlayview.frame.size.height + 200)];

    //NSLog(@"view array %@",[[NSBundle mainBundle]loadNibNamed:@"OverlayView" owner:self options:nil]);
    
    [self.view addSubview:overlayview];
    
    [UIView animateWithDuration:2.0 animations:^{
        [overlayview setCenter:self.view.center];
    } completion:^(BOOL finished) {
        [self performSelector:@selector(removeOverlayView) withObject:nil afterDelay:2.0];
    }];
}

-(void)removeOverlayView
{
    if (overlayview) {
        [overlayview removeFromSuperview];
    }
}

@end
