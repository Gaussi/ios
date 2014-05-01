//
//  GSScrollSingleWindow.h
//  Gaussi
//
//  Created by Matt Sun on 4/28/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSScrollSingleWindow : UIView

@property (atomic,strong) NSString* coverName;
@property (atomic,strong) NSString* bgName;
@property (atomic,strong) NSString* intro;

- (void)layoutInit;

@end
