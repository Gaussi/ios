//
//  GSScrollSingleIntro.h
//  Gaussi
//
//  Created by Matt Sun on 5/3/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSScrollSingleIntro : UIView

@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) NSString* content;
@property float price;

- (void)layoutInit;

@end
