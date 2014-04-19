//
//  GSGaussiStoreBar.m
//  Gaussi
//
//  Created by Matt Sun on 4/19/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSGaussiStoreBar.h"
#import "GSGaussiStoreBarButton.h"

@implementation GSGaussiStoreBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(frame.origin.x, frame.origin.y, 1024, 99)];
        
        // background
        UIView *bg = [[UIView alloc] initWithFrame:CGRectMake(0, 3, 1024, 96)];
        bg.backgroundColor = [UIColor whiteColor];
        bg.alpha = 0.2;
        [self addSubview:bg];
        
        
        // seperate line
        UIView *topBar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1024, 3)];
        topBar.backgroundColor = [UIColor whiteColor];
        topBar.alpha = 0.4;
        [self addSubview:topBar];
        
        // button 1
        GSGaussiStoreBarButton *button1 = [[GSGaussiStoreBarButton alloc] initWithFrame:CGRectMake(36, 0, 144, 144) andIcon:[UIImage imageNamed:@"KnowledgeBaseIcon2.png"] withFrame:CGRectMake(52, 23, 40, 33) andLabel:@"Knowledge Base"];
        button1.tag = 11;
        UITapGestureRecognizer *tapRecognizer1 = [[UITapGestureRecognizer alloc]
                                                 initWithTarget:self action:@selector(tapPiece:)];
        [tapRecognizer1 setNumberOfTapsRequired:1];
        [tapRecognizer1 setDelegate:self];
        [button1 addGestureRecognizer:tapRecognizer1];
        [self addSubview:button1];
        
        // button 2
        GSGaussiStoreBarButton *button2 = [[GSGaussiStoreBarButton alloc] initWithFrame:CGRectMake(180, 0, 144, 144) andIcon:[UIImage imageNamed:@"ViewHistoryIcon2.png"] withFrame:CGRectMake(52, 23, 40, 40) andLabel:@"View History"];
        button2.tag = 12;
        UITapGestureRecognizer *tapRecognizer2 = [[UITapGestureRecognizer alloc]
                                                  initWithTarget:self action:@selector(tapPiece:)];
        [tapRecognizer2 setNumberOfTapsRequired:2];
        [tapRecognizer2 setDelegate:self];
        [button2 addGestureRecognizer:tapRecognizer2];
        [self addSubview:button2];
        
        // button 3
        GSGaussiStoreBarButton *button3 = [[GSGaussiStoreBarButton alloc] initWithFrame:CGRectMake(324, 0, 144, 144) andIcon:[UIImage imageNamed:@"CreatingEncyclopediaIcon02.png"] withFrame:CGRectMake(52, 23, 40, 37) andLabel:@"Create Encyclopedia"];
        button3.tag = 13;
        UITapGestureRecognizer *tapRecognizer3 = [[UITapGestureRecognizer alloc]
                                                  initWithTarget:self action:@selector(tapPiece:)];
        [tapRecognizer3 setNumberOfTapsRequired:3];
        [tapRecognizer3 setDelegate:self];
        [button3 addGestureRecognizer:tapRecognizer3];
        [self addSubview:button3];
        
        // button 4
        GSGaussiStoreBarButton *button4 = [[GSGaussiStoreBarButton alloc] initWithFrame:CGRectMake(468, 0, 144, 144) andIcon:[UIImage imageNamed:@"GaussiStoreIcon2.png"] withFrame:CGRectMake(52, 23, 40, 34) andLabel:@"Gaussi Store"];
        button4.tag = 14;
        UITapGestureRecognizer *tapRecognizer4 = [[UITapGestureRecognizer alloc]
                                                  initWithTarget:self action:@selector(tapPiece:)];
        [tapRecognizer4 setNumberOfTapsRequired:4];
        [tapRecognizer4 setDelegate:self];
        [button4 addGestureRecognizer:tapRecognizer4];
        [self addSubview:button4];
        
        
        
        // Select ini
        [self exclusiveSelect:1];
        
    }
    return self;
}


- (void)exclusiveSelect: (int) selectedButton{
    GSGaussiStoreBarButton* button1 = (GSGaussiStoreBarButton*)[self viewWithTag:11];
    GSGaussiStoreBarButton* button2 = (GSGaussiStoreBarButton*)[self viewWithTag:12];
    GSGaussiStoreBarButton* button3 = (GSGaussiStoreBarButton*)[self viewWithTag:13];
    GSGaussiStoreBarButton* button4 = (GSGaussiStoreBarButton*)[self viewWithTag:14];
    
    switch (selectedButton) {
        case 1:
            button1.selected = YES;
            button2.selected = NO;
            button3.selected = NO;
            button4.selected = NO;
            break;
        case 2:
            button1.selected = NO;
            button2.selected = YES;
            button3.selected = NO;
            button4.selected = NO;
            break;
        case 3:
            button1.selected = NO;
            button2.selected = NO;
            button3.selected = YES;
            button4.selected = NO;
            break;
        default:
            button1.selected = NO;
            button2.selected = NO;
            button3.selected = NO;
            button4.selected = YES;
            break;
    }
    [button1 refresh];
    [button2 refresh];
    [button3 refresh];
    [button4 refresh];
}


- (void)tapPiece:(UITapGestureRecognizer *)gestureRecognizer{
    NSLog(@"tapped: %d", gestureRecognizer.view.tag);
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
