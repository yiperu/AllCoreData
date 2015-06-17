//
//  ViewController.m
//  001ManagedObject_OSX_ObjC
//
//  Created by Henry AT on 6/17/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
  [super setRepresentedObject:representedObject];

  // Update the view, if already loaded.
}

- (IBAction)btnCreatedObject:(id)sender {  
  
  NSManagedObjectContext *context = ((AppDelegate *) [[NSApplication sharedApplication] delegate]).managedObjectContext;
  NSManagedObject *myMO = [NSEntityDescription insertNewObjectForEntityForName:@"Course" inManagedObjectContext:context];
  
  [myMO setValue:@"Curso de CoreData for iOS and OS X" forKey:@"title"];
  [myMO setValue:@"Henry AT" forKey:@"author"];
  [myMO setValue:[NSDate date] forKey:@"releaseDate"];
  
  
}
@end
