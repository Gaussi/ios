//
//  GSGaussiStoreSubBar.m
//  Gaussi
//
//  Created by Matt Sun on 4/19/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSGaussiStoreSubBar.h"
#import "GSGaussiStoreSubBarButton.h"

@implementation GSGaussiStoreSubBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(0, 148, 1024, 45)];
        UIView *seperateLine = [[UIView alloc] initWithFrame:CGRectMake(0, 44, 1024, 1)];
        seperateLine.backgroundColor = [UIColor whiteColor];
        seperateLine.alpha = 0.2;
        [self addSubview:seperateLine];
        
        // Button 1
        GSGaussiStoreSubBarButton *button1 = [[GSGaussiStoreSubBarButton alloc] initWithFrame:CGRectMake(39, 0, 0, 0) andButtonTitle:@"Most Recent"];
        button1.tag = 111;
        UITapGestureRecognizer *tapRecognizer1 = [[UITapGestureRecognizer alloc]
                                                  initWithTarget:self action:@selector(tapPiece:)];
        [tapRecognizer1 setNumberOfTapsRequired:1];
        [tapRecognizer1 setDelegate:self];
        [button1 addGestureRecognizer:tapRecognizer1];
        [self addSubview:button1];
        
        // Button 2
        GSGaussiStoreSubBarButton *button2 = [[GSGaussiStoreSubBarButton alloc] initWithFrame:CGRectMake(168, 0, 0, 0) andButtonTitle:@"Most Popular"];
        button2.tag = 112;
        UITapGestureRecognizer *tapRecognizer2 = [[UITapGestureRecognizer alloc]
                                                  initWithTarget:self action:@selector(tapPiece:)];
        [tapRecognizer2 setNumberOfTapsRequired:1];
        [tapRecognizer2 setDelegate:self];
        [button2 addGestureRecognizer:tapRecognizer2];
        [self addSubview:button2];
        
        // Button 3
        GSGaussiStoreSubBarButton *button3 = [[GSGaussiStoreSubBarButton alloc] initWithFrame:CGRectMake(291, 0, 0, 0) andButtonTitle:@"Free Items"];
        button3.tag = 113;
        UITapGestureRecognizer *tapRecognizer3 = [[UITapGestureRecognizer alloc]
                                                  initWithTarget:self action:@selector(tapPiece:)];
        [tapRecognizer3 setNumberOfTapsRequired:1];
        [tapRecognizer3 setDelegate:self];
        [button3 addGestureRecognizer:tapRecognizer3];
        [self addSubview:button3];
        
        // select ini
        [self exclusiveSelect:112];
    }
    return self;
}

- (void)exclusiveSelect: (int) selectedButton{
    GSGaussiStoreSubBarButton *button1 = (GSGaussiStoreSubBarButton*)[self viewWithTag:111];
    GSGaussiStoreSubBarButton *button2 = (GSGaussiStoreSubBarButton*)[self viewWithTag:112];
    GSGaussiStoreSubBarButton *button3 = (GSGaussiStoreSubBarButton*)[self viewWithTag:113];
    
    switch (selectedButton) {
        case 111:
            button1.selected = YES;
            button2.selected = NO;
            button3.selected = NO;
            break;
        case 112:
            button1.selected = NO;
            button2.selected = YES;
            button3.selected = NO;
            break;
        default:
            button1.selected = NO;
            button2.selected = NO;
            button3.selected = YES;
            break;
    }
    
    [button1 refresh];
    [button2 refresh];
    [button3 refresh];
}

- (void)tapPiece:(UITapGestureRecognizer *)gestureRecognizer{
    [self exclusiveSelect:gestureRecognizer.view.tag];
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
