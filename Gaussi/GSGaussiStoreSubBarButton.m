//
//  GSGaussiStoreSubBarButton.m
//  Gaussi
//
//  Created by Matt Sun on 4/19/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSGaussiStoreSubBarButton.h"

@implementation GSGaussiStoreSubBarButton

- (id)initWithFrame:(CGRect)frame andButtonTitle: (NSString*) title
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(frame.origin.x, frame.origin.y, 126, 45)];
        
        UIView *indicator = [[UIView alloc] initWithFrame:CGRectMake(22, 30, 81, 1)];
        indicator.backgroundColor = [UIColor colorWithRed:247/255.0f green:147/255.0f blue:30/255.0f alpha:1.0f];
        indicator.tag = 11;
        [self addSubview:indicator];
        
        UILabel *buttonName = [[UILabel alloc] initWithFrame:CGRectMake(0, 4, 126, 36)];
        buttonName.text = title;
        [buttonName setFont:[UIFont fontWithName:@"Helvetica Neue" size:14]];
        buttonName.textColor = [UIColor whiteColor];
        [buttonName setTextAlignment:NSTextAlignmentCenter];
        buttonName.tag = 12;
        [self addSubview:buttonName];
    }
    return self;
}

- (void)refresh{
    if (self.selected) {
        [self viewWithTag:11].hidden = NO;
        [self viewWithTag:12].alpha = 1;
    }
    else{
        [self viewWithTag:11].hidden = YES;
        [self viewWithTag:12].alpha = 0.4;
    }
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
