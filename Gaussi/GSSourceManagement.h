//
//  GSSourceManagement.h
//  Gaussi
//
//  Created by Matt Sun on 5/10/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GSEncyclopediaHead.h"

@interface GSSourceManagement : NSObject

- (GSEncyclopediaHead*) getHeadOf:(NSString*) EncyclopediaHead;
- (UIImage*) getImageNamed:(NSString*) fileNamePath;

@end
