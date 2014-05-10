//
//  GSSearchEngine.m
//  Gaussi
//
//  Created by Matt Sun on 5/10/14.
//  Copyright (c) 2014 Gaussi. All rights reserved.
//

#import "GSSearchEngine.h"

@interface GSSearchEngine (){
    
}

@property (nonatomic, strong) NSString* dbPath;
@property (nonatomic) sqlite3* db;

@end

@implementation GSSearchEngine

- (id) init{
    self = [super init];
    if ( self ) {
        NSString* documentsDirectoryPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        self.dbPath = [[documentsDirectoryPath stringByAppendingPathComponent:@"database"] stringByAppendingPathComponent:@"entries.db"];
        
        if (![[NSFileManager defaultManager] fileExistsAtPath:self.dbPath]) {
            [self createdb];
        }
        
        if (sqlite3_open([_dbPath UTF8String], &_db) != SQLITE_OK){
            NSLog(@"SearchEngine @selector(init) error: db open error");
        }
        sqlite3_close(_db);
    }
    return  self;
}

- (void) createdb{
    // If Directory not exist
    if (![[NSFileManager defaultManager] fileExistsAtPath: [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:@"database"]]){
        [[NSFileManager defaultManager] createDirectoryAtPath:[[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:@"database"]
                                  withIntermediateDirectories:NO
                                                   attributes:nil
                                                        error:NULL];
    }
    
    if (sqlite3_open([_dbPath UTF8String], &_db) == SQLITE_OK){
        char *errMsg;
#warning table schema not implemented
        const char *sql_stmt = "CREATE TABLE IF NOT EXISTS ENTRIES (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, file_path TEXT)";
        if (sqlite3_exec(_db, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK){
            NSLog(@"SearchEngine @selector(createdb) error: Failed to create table");
        }
        else{
            NSLog(@"SearchEngine @selector(createdb) error: db open error");
        }
    }
    
}

- (NSArray*)searchByKeyword:(NSString*)kwd{
    sqlite3_stmt *statement;
    NSMutableArray *returnResult = [[NSMutableArray alloc] initWithObjects:nil];
    NSMutableString *searchTerm = [[NSMutableString alloc] initWithString:@"%%"];
    
    for (int i=0; i<kwd.length; i++) {
        [searchTerm appendString:[NSString stringWithFormat:@"%c%%",[kwd characterAtIndex:i]]];
    }
    
    NSString* queryString = [NSString stringWithFormat:@"select file_path from ENTRIES where title like (\'%@\')",[NSString stringWithString:searchTerm]];
    if (sqlite3_prepare_v2(_db,
                           [queryString UTF8String], -1, &statement, NULL) == SQLITE_OK)
    {
        while (sqlite3_step(statement) == SQLITE_ROW){
            NSString *filePathField = [[NSString alloc]
                                       initWithUTF8String:
                                       (const char *) sqlite3_column_text(statement, 0)];
            [returnResult addObject:filePathField];
        }
        sqlite3_finalize(statement);
    }
    else{
        NSLog(@"SearchEngine @selector(searchByKeyword:) error: execute failed");
    }
    
    return returnResult;
}

- (void) insertTestData{
    sqlite3_stmt *statement;
    if (sqlite3_open([_dbPath UTF8String], &_db) == SQLITE_OK){
        
        NSString *insertSQL = [NSString stringWithFormat:
                               @"INSERT INTO ENTRIES (title, file_path) VALUES (\"Dachshund\", \"dachshund.xml\")"];
        sqlite3_prepare_v2(_db, [insertSQL UTF8String],
                           -1, &statement, NULL);
        if (sqlite3_step(statement) != SQLITE_DONE){
            NSLog(@"GSSearchEngine @selector(insertTestData) error: insert failed");
        }
        
        insertSQL = [NSString stringWithFormat:
                     @"INSERT INTO ENTRIES (title, file_path) VALUES (\"0aechhenrge\", \"dfeiefow.xml\")"];
        sqlite3_prepare_v2(_db, [insertSQL UTF8String],
                           -1, &statement, NULL);
        if (sqlite3_step(statement) != SQLITE_DONE){
            NSLog(@"GSSearchEngine @selector(insertTestData) error: insert failed");
        }
    }
    else{
        NSLog(@"CSSearchEnginer @selector(insertTestData) error: open db failed");
    }
    
    sqlite3_finalize(statement);
    
}

@end
