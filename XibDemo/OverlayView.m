//
//  OverlayView.m
//  XibDemo
//
//  Created by Ashish Pisey on 3/1/15.
//  Copyright (c) 2015 Ashish Pisey. All rights reserved.
//

#import "OverlayView.h"

@implementation OverlayView
@synthesize tag;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame])) {
        
        UIView *firstView = [[[NSBundle mainBundle]loadNibNamed:@"OverlayView" owner:self options:nil]firstObject];
        NSLog(@"view array %@",[[NSBundle mainBundle]loadNibNamed:@"OverlayView" owner:self options:nil]);
        if (tag == 1) {

            [self addSubview:firstView];
        }
    }
    return self;
}

@end
