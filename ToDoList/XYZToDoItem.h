//
//  XYZToDoItem.h
//  ToDoList
//
//  Created by Olivier Truong on 11/10/13.
//  Copyright (c) 2013 Olivier Truong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZToDoItem : NSObject <NSCoding>

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
