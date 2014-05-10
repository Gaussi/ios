//
//  GSScrollIntro.m
//  Gaussi
//
//  Created by Matt Sun on 5/3/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSScrollIntro.h"
#import "GSScrollSingleWindow.h"
#import "GSScrollSingleIntro.h"

@interface GSScrollIntro(){
    NSInteger _numOfscrollsTemp;
}

@property double _originalOffset;
@property BOOL _moveLeft;

@end

@implementation GSScrollIntro

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self._moveLeft = YES;
        [self setFrame:CGRectMake(0, frame.origin.y, 1024, 605)];
        _numOfscrollsTemp = 7;
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
//    UIView *bg = [[UIView alloc] initWithFrame:CGRectMake(0, 2, 1024, 306)];
//    bg.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
//    [self addSubview:bg];
    
    // scroll view
    UIScrollView* scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 9, 1024, 576)];
    scroll.contentSize = CGSizeMake(600*_numOfscrollsTemp+26, 288);
    for (int i=0; i<_numOfscrollsTemp; i++) {
        GSScrollSingleWindow* wd = [[GSScrollSingleWindow alloc] initWithFrame:CGRectMake(26+600*i, 0, 100, 100)];
        wd.coverName = @"HPcover1.png";
        wd.bgName = @"HPbg1.png";
        wd.intro = [NSString stringWithFormat:@"%d The giant panda does not hibernate but it will shelter in caves or hollow trees in very cold weather",i];
        [wd layoutInit];
        [scroll addSubview:wd];
        
        GSScrollSingleIntro* introSingle = [[GSScrollSingleIntro alloc] initWithFrame:CGRectMake(26+600*i, 289, 0, 0)];
        introSingle.title = @"All We Know About Pandas";
        introSingle.content = @"The panda (Ailuropoda melanoleuca, lit. \"black and white cat-foot\"), also known as the giant panda to distinguish it from the unrelated red panda, is a bear native to south central China. It is easily recognized by the large, distinctive black patches around its eyes, over the ears, and across its round body. Though it belongs to the order Carnivora, the panda's diet is over 99% bamboo. Pandas in the wild will occasionally eat other grasses, wild tubers, or even meat in the form of birds, rodents or carrion. In captivity, they may receive honey, eggs, fish, yams, shrub leaves, oranges, or bananas along with specially prepared food.";
        introSingle.price = 0.99;
        [introSingle layoutInit];
        [scroll addSubview:introSingle];
        
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
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSInteger numOfWindow = ceil(self._originalOffset/600);
    if (scrollView.contentOffset.x>self._originalOffset) {
        [UIView animateWithDuration:0.3 animations:^{
            if (self._originalOffset==(401+600*(_numOfscrollsTemp-3))) {
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
