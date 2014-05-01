//
//  GSScrollWindow.m
//  Gaussi
//
//  Created by Matt Sun on 4/28/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSScrollWindow.h"
#import "GSScrollSingleWindow.h"

@interface GSScrollWindow()

@property double _originalOffset;
@property BOOL _moveLeft;

@end

@implementation GSScrollWindow

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self._moveLeft = YES;
        [self setFrame:CGRectMake(0, 460, 1024, 308)];
        [self elementsInit];
    }
    return self;
}

- (void)elementsInit{
    // Seperate Line
    UIView *seperateLine = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1024, 2)];
    seperateLine.backgroundColor = [UIColor colorWithWhite:1 alpha:0.6];
    [self addSubview:seperateLine];
    
    // blur bg
    UIView *bg = [[UIView alloc] initWithFrame:CGRectMake(0, 2, 1024, 306)];
    bg.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    [self addSubview:bg];
    
    // scroll view
    UIScrollView* scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 9, 1024, 290)];
    scroll.contentSize = CGSizeMake(600*10+26, 288);
    for (int i=0; i<10; i++) {
        GSScrollSingleWindow* wd = [[GSScrollSingleWindow alloc] initWithFrame:CGRectMake(26+600*i, 0, 100, 100)];
        wd.coverName = @"HPcover1.png";
        wd.bgName = @"HPbg1.png";
        wd.intro = [NSString stringWithFormat:@"%d The giant panda does not hibernate but it will shelter in caves or hollow trees in very cold weather",i];
        [wd layoutInit];
        [scroll addSubview:wd];
    }
    scroll.showsHorizontalScrollIndicator = NO;
    scroll.contentOffset = CGPointMake(401, 0);
    scroll.tag = 31;
    scroll.delegate = self;
    scroll.decelerationRate = 0.7;
    [self addSubview:scroll];
}

-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    [scrollView setContentOffset:scrollView.contentOffset animated:NO];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSInteger numOfWindow = ceil(self._originalOffset/600);
    
    if (scrollView.contentOffset.x>self._originalOffset) {
        [UIView animateWithDuration:0.3 animations:^{
            if (self._originalOffset==(401+600*7)) {
                scrollView.contentOffset = CGPointMake(scrollView.contentSize.width-1024, 0);
            }
            else if (self._originalOffset==(scrollView.contentSize.width-1024)){
                scrollView.contentOffset = CGPointMake(scrollView.contentSize.width-1024, 0);
            }
            else{
                scrollView.contentOffset = CGPointMake(401+600*numOfWindow, 0);
            }
        }];
    }
    else{
        [UIView animateWithDuration:0.3 animations:^{
            
            if (  self._originalOffset==401 ) {
                scrollView.contentOffset = CGPointMake(0, 0);
            }
            else if (  self._originalOffset==0 ) {
                scrollView.contentOffset = CGPointMake(0, 0);
            }
            else{
                scrollView.contentOffset = CGPointMake(401+600*(numOfWindow-2), 0);
            }
        }];
    }
    NSLog(@"after transform: %f",scrollView.contentOffset.x);
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSInteger numOfWindow = ceil(self._originalOffset/600);
    if (scrollView.contentOffset.x>self._originalOffset) {
        [UIView animateWithDuration:0.3 animations:^{
            if (self._originalOffset==(401+600*7)) {
                scrollView.contentOffset = CGPointMake(scrollView.contentSize.width-1024, 0);
            }
            else if (self._originalOffset==(scrollView.contentSize.width-1024)){
                scrollView.contentOffset = CGPointMake(scrollView.contentSize.width-1024, 0);
            }
            else{
                scrollView.contentOffset = CGPointMake(401+600*numOfWindow, 0);
            }
        }];
    }
    else{
        [UIView animateWithDuration:0.3 animations:^{
            
            if (  self._originalOffset==401 ) {
                scrollView.contentOffset = CGPointMake(0, 0);
            }
            else if (  self._originalOffset==0 ) {
                scrollView.contentOffset = CGPointMake(0, 0);
            }
            else{
                scrollView.contentOffset = CGPointMake(401+600*(numOfWindow-2), 0);
            }
        }];
    }
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    self._originalOffset = scrollView.contentOffset.x;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
