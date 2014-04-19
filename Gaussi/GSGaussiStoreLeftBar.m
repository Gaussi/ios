//
//  GSGaussiStoreLeftBar.m
//  Gaussi
//
//  Created by Matt Sun on 4/19/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSGaussiStoreLeftBar.h"
#import "GSLeftBarButton.h"

@implementation GSGaussiStoreLeftBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(0, 193, 197, 575)];
        
        self.items = [NSArray arrayWithObjects:@"All",@"Arts",@"Biography",@"History",@"Mathematics",@"Science",@"Society",@"Technology", nil];
        
        for (int i=0; i<self.items.count; i++) {
            GSLeftBarButton *leftTab = [[GSLeftBarButton alloc] initWithFrame:CGRectMake(0, 22+30*i, 161, 60) andText:[self.items objectAtIndex:i]];
            leftTab.tag = 100+i;
            UITapGestureRecognizer *tapRecognizer1 = [[UITapGestureRecognizer alloc]
                                                      initWithTarget:self action:@selector(tapPiece:)];
            [tapRecognizer1 setNumberOfTapsRequired:1];
            [tapRecognizer1 setDelegate:self];
            [leftTab addGestureRecognizer:tapRecognizer1];
            [self addSubview:leftTab];
        }
        [self exclusiveSelect:101];
    }
    return self;
}

- (void)exclusiveSelect: (NSInteger) selectedItem{
    for (int i=100; i<self.items.count+100; i++) {
        GSLeftBarButton* button = (GSLeftBarButton*)[self viewWithTag:i];
        if (selectedItem==i) {
            button.selected = YES;
            [button refresh];
        }
        else{
            button.selected = NO;
            [button refresh];
        }
    }
}

- (void)tapPiece:(UITapGestureRecognizer *)gestureRecognizer{
    [self exclusiveSelect:gestureRecognizer.view.tag];
    NSLog(@"%d",gestureRecognizer.view.tag);
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
