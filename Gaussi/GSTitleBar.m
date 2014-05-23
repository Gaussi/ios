//
//  GSTitleBar.m
//  Gaussi
//
//  Created by Matt Sun on 5/23/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSTitleBar.h"

@implementation GSTitleBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(0, 0, 1024, 49)];
        self.backgroundColor = [UIColor clearColor];
        
        UIImageView *logo = [[UIImageView alloc] initWithFrame:CGRectMake(24, 7, 126, 38)];
        logo.image = [UIImage imageNamed:@"HPMainPageLogo.png"];
        [self addSubview:logo];
        
        UIButton* moreOption = [[UIButton alloc] initWithFrame:CGRectMake(972, 16, 21, 17)];
        [moreOption setImage:[UIImage imageNamed:@"HPMoreOptionsButton.png"] forState:UIControlStateNormal];
        [self addSubview:moreOption];
        
        UIView* SeperateLine = [[UIView alloc] initWithFrame:CGRectMake(946, 12, 1, 26)];
        SeperateLine.backgroundColor = [UIColor whiteColor];
        [self addSubview:SeperateLine];
        
    }
    return self;
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
