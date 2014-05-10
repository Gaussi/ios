//
//  GSScrollSingleIntro.m
//  Gaussi
//
//  Created by Matt Sun on 5/3/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSScrollSingleIntro.h"

@implementation GSScrollSingleIntro

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:CGRectMake(frame.origin.x, frame.origin.y, 574, 288)];
    }
    return self;
}

- (void)layoutInit{
    
//    UIImageView* wdbg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
//    wdbg.image = [UIImage imageNamed:self.bgName];
//    [self addSubview:wdbg];
    self.backgroundColor = [UIColor clearColor];
    
//    UIImageView* cover = [[UIImageView alloc] initWithFrame:CGRectMake(457, 136, 98, 130)];
//    cover.image = [UIImage imageNamed:self.coverName];
//    [self addSubview:cover];
    
    UILabel* pediaTitle = [[UILabel alloc] initWithFrame:CGRectMake(70, 14, 444, 54)];
    pediaTitle.text = self.title;
    pediaTitle.textColor = [UIColor whiteColor];
    [pediaTitle setFont:[UIFont fontWithName:@"Helvetica" size:23]];
    [pediaTitle setTextAlignment:NSTextAlignmentLeft];
    [self addSubview:pediaTitle];
    
    UITextView* briefIntro = [[UITextView alloc] initWithFrame:CGRectMake(66, 52, 450, 157)];
    briefIntro.text = self.content;
    [briefIntro setTextAlignment:NSTextAlignmentLeft];
    [briefIntro setFont:[UIFont fontWithName:@"Helvetica" size:13]];
    briefIntro.textColor = [UIColor whiteColor];
    briefIntro.editable = NO;
    briefIntro.userInteractionEnabled = NO;
    briefIntro.backgroundColor = [UIColor clearColor];
    [self addSubview:briefIntro];
    
    UIButton* priceButton = [[UIButton alloc] initWithFrame:CGRectMake(70, 231, 125, 24)];
    //priceButton.titleLabel.text = [NSString stringWithFormat:@"%f",self.price];
    [priceButton setTitle:@"0.99" forState:UIControlStateNormal];
    //[priceButton setImage:[UIImage imageNamed:@"PurchaseButtion.png"] forState:UIControlStateNormal];
    [priceButton.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:16]];
    priceButton.titleLabel.textColor = [UIColor whiteColor];
    [priceButton setBackgroundImage:[UIImage imageNamed:@"PurchaseButtion.png"] forState:UIControlStateNormal];
    [priceButton.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [self addSubview:priceButton];
    
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
