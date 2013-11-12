//
//  XYZToDoItem.m
//  ToDoList
//
//  Created by Olivier Truong on 11/10/13.
//  Copyright (c) 2013 Olivier Truong. All rights reserved.
//

#import "XYZToDoItem.h"

@implementation XYZToDoItem
- (id)init
{
    self = [super init];
    if (self) {
        _completed = NO;
        _creationDate = [NSDate date];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        _itemName = [coder decodeObjectForKey:@"itemName"];
        _completed = [coder decodeBoolForKey:@"completed"];
        _creationDate = [coder decodeObjectForKey:@"creationDate"];
        _reminderDate = [coder decodeObjectForKey:@"reminderDate"];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.itemName forKey:@"itemName"];
    [coder encodeBool:self.completed forKey:@"completed"];
    [coder encodeObject:self.creationDate forKey:@"creationDate"];
    [coder encodeObject:self.reminderDate forKey:@"reminderDate"];

}


@end
