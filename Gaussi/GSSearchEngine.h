//
//  GSSearchEngine.h
//  Gaussi
//
//  Created by Matt Sun on 5/10/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface GSSearchEngine : NSObject

- (NSArray*)searchByKeyword:(NSString*)kwd;
- (id) init;
- (void) insertTestData;
@end
