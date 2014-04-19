//
//  GSGaussiStoreSubBarButton.h
//  Gaussi
//
//  Created by Matt Sun on 4/19/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSGaussiStoreSubBarButton : UIView

@property BOOL selected;

- (id)initWithFrame:(CGRect)frame
     andButtonTitle: (NSString*) title;
- (void)refresh;

@end
