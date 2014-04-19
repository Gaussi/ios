//
//  GSLeftBarButton.m
//  Gaussi
//
//  Created by Matt Sun on 4/19/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSLeftBarButton.h"

@implementation GSLeftBarButton

- (id)initWithFrame:(CGRect)frame andText: (NSString*) title
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel * text = [[UILabel alloc] initWithFrame:CGRectMake(36, 0, 161, 36)];
        text.text = title;
        [text setFont:[UIFont fontWithName:@"Helvetica Neue" size:13]];
        text.textColor = [UIColor whiteColor];
        [text setTextAlignment:NSTextAlignmentLeft];
        text.tag = 111;
        [self addSubview:text];
    }
    return self;
}

- (void)refresh{
    if (self.selected) {
        [self viewWithTag:111].alpha = 1;
    }
    else{
        [self viewWithTag:111].alpha = 0.4;
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
