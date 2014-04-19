//
//  GSLeftBarButton.h
//  Gaussi
//
//  Created by Matt Sun on 4/19/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSLeftBarButton : UIView

- (id)initWithFrame:(CGRect)frame andText: (NSString*) title;
@property BOOL selected;
- (void) refresh;

@end
