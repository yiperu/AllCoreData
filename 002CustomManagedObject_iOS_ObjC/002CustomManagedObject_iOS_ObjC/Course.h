//
//  Course.h
//  
//
//  Created by Henry AT on 6/19/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Course : NSManagedObject

@property (nonatomic, retain) NSDate * releaseDate;
@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSString * title;

-(void)simpleMethod;

@end
