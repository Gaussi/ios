//
//  GSGaussiStoreBarButton.h
//  Gaussi
//
//  Created by Matt Sun on 4/19/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSGaussiStoreBarButton : UIView

@property BOOL selected;

- (id)initWithFrame:(CGRect)frame
            andIcon:(UIImage*)icon
          withFrame: (CGRect) iconFrame
           andLabel: (NSString*) labelName;

- (void) refresh;
@end
