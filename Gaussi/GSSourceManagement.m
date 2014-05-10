//
//  GSSourceManagement.m
//  Gaussi
//
//  Created by Matt Sun on 5/10/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSSourceManagement.h"

@interface GSSourceManagement (){
    NSString* documentsDirectoryPath;
}

@end

@implementation GSSourceManagement

- (id) init{
    self = [super init];
    if ( self ) {
        documentsDirectoryPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    }
    return self;
}


- (GSEncyclopediaHead*) getHeadOf:(NSString*) EncyclopediaHead{
    
    return nil;
}

- (UIImage*) getImageNamed:(NSString*) fileNamePath{
    NSString* encyclopediaPath = [documentsDirectoryPath stringByAppendingString:@"/encyclopedia"];
    NSString* imagePath = [encyclopediaPath stringByAppendingString:fileNamePath];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:imagePath]) {
        NSLog(@"SourceManagement @selector(getImageNamed:) error: file not exist");
        return nil;
    }
    return [UIImage imageWithContentsOfFile:imagePath];
}

@end
