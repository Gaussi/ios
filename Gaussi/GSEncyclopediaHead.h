//
//  GSEncyclopediaHead.h
//  Gaussi
//
//  Created by Matt Sun on 5/10/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GSEncyclopediaHead : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* author;
@property (nonatomic, strong) NSString* coverPictureFileName;
@property (nonatomic, strong) NSString* briefIndoction;
@property (nonatomic, strong) NSString* category;
@property (nonatomic, strong) NSString* authorInfo;

@end
