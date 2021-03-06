//
//  DataItem.m
//  ObjectiveC
//
//  Created by Tiehui.Lu on 13-4-16.
//  Copyright (c) 2013年 aiitec. All rights reserved.
//

#import "DataItem.h"


@implementation DataItem

@synthesize dataFieldName,value;

- (id)init {
	if(self = [super init]){
		
	}
	return self;
}

- (void)dealloc {
	[dataFieldName release];
	[value release];
	[super dealloc];
}

//组包
- (void)getProperties:(NSMutableDictionary *)properties{
	if (properties != nil) {
		
		if (self.dataFieldName != nil) {
			[properties setObject:self.dataFieldName forKey:@"name"];
		}
		
		if (self.value != nil) {
			[properties setObject:self.value forKey:@"value"];
		}
		
	}
}

//解包
- (void)setProperties:(NSDictionary *)properties{
	if (properties != nil) {
		self.dataFieldName = (NSString *)[properties objectForKey:@"name"];
		self.value = (NSString *)[properties objectForKey:@"value"];
	}
}


@end
