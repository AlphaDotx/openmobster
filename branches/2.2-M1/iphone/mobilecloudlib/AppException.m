/**
 * Copyright (c) {2003,2010} {openmobster@gmail.com} {individual contributors as indicated by the @authors tag}.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */

#import "AppException.h"


/**
 * 
 * @author openmobster@gmail.com
 */
@implementation AppException

-init
{
	if(self == [super init])
	{
		attrMgr = [GenericAttributeManager withInit];
	}
	return self;
}

+(id)withInit
{
	AppException *instance = [[AppException alloc] init];
	instance = [instance autorelease];
	return instance;
}

-(void)setAttribute:(NSString *)name :(id)value
{
	[attrMgr setAttribute:name :value];
}

-(id)getAttribute:(NSString *)name
{
	return [attrMgr getAttribute:name];
}

-(void)setType:(NSString *)type
{
	[self setAttribute:@"type" :type];
}

-(NSString *)getType
{
	return [self getAttribute:@"type"];
}

-(void)setMessageKey:(NSString *)messageKey
{
	[self setAttribute:@"message_key" :messageKey];
}

-(NSString *)getMessageKey
{
	return [self getAttribute:@"message_key"];
}

-(void)setMessage:(NSString *)message
{
	[self setAttribute:@"message" :message];
}

-(NSString *)getMessage
{
	return [self getAttribute:@"message"];
}
@end
