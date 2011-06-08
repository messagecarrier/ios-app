
//
//  OutOfBandMessage.m
//  MessageCarrier
//
//  Created by Brian Davidson on 6/3/11.
//  Copyright (c) 2011 Georgia Institute of Technology. All rights reserved.
//

#import "OutOfBandMessage.h"


@implementation OutOfBandMessage
@dynamic Status;
@dynamic MessageAttempts;

@dynamic SourceID;
@dynamic MessageID;
@dynamic Destination;
@dynamic HopCount;
@dynamic Location;
@dynamic TimeStamp;

@dynamic MessageType;
@dynamic SenderName;
@dynamic MessageBody;


-(NSMutableDictionary *)dictionaryRepresentation {
    
	NSMutableDictionary *dict = [[[NSMutableDictionary alloc] initWithCapacity:50] autorelease];
    
    if (self.SourceID && self.MessageID && self.Destination && self.HopCount && self.Location && self.TimeStamp && self.MessageType && self.SenderName && self.MessageBody) {
        [dict setObject: self.SourceID          forKey: @"sourceid"];
        [dict setObject: self.MessageID         forKey: @"messageid"];
        [dict setObject: self.Destination       forKey: @"destination"];
        [dict setObject: self.HopCount          forKey: @"hopcount"];
        [dict setObject: self.Location          forKey: @"location"];
        [dict setObject: self.TimeStamp         forKey: @"timestamp"];
        [dict setObject: self.MessageType       forKey: @"messagetype"];
        [dict setObject: self.SenderName        forKey: @"sendername"];
        [dict setObject: self.MessageBody       forKey: @"messagebody"];
    }
    
	return dict;
}

-(void)setWithDictionaryRepresentation:(NSDictionary*)dictionary
{
    self.SourceID = [dictionary objectForKey: @"sourceid"];
    self.MessageID = [dictionary objectForKey: @"messageid"];
    self.Destination = [dictionary objectForKey: @"destination"];
    self.HopCount = [dictionary objectForKey: @"hopcount"];
    self.Location = [dictionary objectForKey: @"location"];
    self.TimeStamp = [dictionary objectForKey: @"timestamp"];
    self.MessageType = [dictionary objectForKey: @"messagetype"];
    self.SenderName = [dictionary objectForKey: @"sendername"];
    self.MessageBody = [dictionary objectForKey: @"messagebody"];
}

-(NSString *) string {
    return [NSString stringWithFormat:@"Status = %@\nSourceID = %@\nMessageID=%@\nDestination=%@\nHopCount=%@\nLocation=%@\nTimeStamp=%@\nMessageType=%@\nSenderName=%@\nMessageBody=%@",self.Status,self.SourceID,self.MessageID,self.Destination,self.HopCount,self.Location,self.TimeStamp,self.MessageType,self.SenderName,self.MessageBody];
}
@end
