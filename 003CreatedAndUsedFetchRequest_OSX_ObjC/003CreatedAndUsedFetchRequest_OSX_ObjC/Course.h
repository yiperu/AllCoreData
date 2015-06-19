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

@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSDate * releaseDate;


-(void)simpleMethod;

@end
