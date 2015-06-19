//
//  ViewController.m
//  003CreatedAndUsedFetchRequest_OSX_ObjC
//
//  Created by Henry AT on 6/19/15.
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

- (IBAction)btnCreatedManagedObject:(id)sender {
  
  //  AppDelegate *appDelegate = (AppDelegate *)[[NSApplication sharedApplication] delegate];
  //  NSManagedObjectContext *context = appDelegate.managedObjectContext;
  NSManagedObjectContext *context = ((AppDelegate *)[[NSApplication sharedApplication] delegate]).managedObjectContext;
  
  NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
  [dateFormatter setDateFormat:@"dd MMM yyyy"];
  
  // First Course Object
  Course *first = (Course *)[NSEntityDescription insertNewObjectForEntityForName:@"Course" inManagedObjectContext:context];
  first.title = @"Core Data for iOS and OS X";
  first.author = @"Henry AT";
  first.releaseDate = [dateFormatter dateFromString:@"19 Jun 2015"];
  [first simpleMethod];
  
  // Second Course Object
  Course *second = (Course *)[NSEntityDescription insertNewObjectForEntityForName:@"Course" inManagedObjectContext:context];
  second.title = @"iOS SDK";
  second.author = @"Henry AT";
  second.releaseDate = [dateFormatter dateFromString:@"19 Jun 2015"];
  [second simpleMethod];
  
  // Third Course Object
  Course *third = (Course *)[NSEntityDescription insertNewObjectForEntityForName:@"Course" inManagedObjectContext:context];
  third.title = @"Java Essential";
  third.author = @"Henry AT";
  third.releaseDate = [dateFormatter dateFromString:@"19 Jun 2015"];
  [third simpleMethod];
  
  // Fourth Course Object
  Course *fourth = (Course *)[NSEntityDescription insertNewObjectForEntityForName:@"Course" inManagedObjectContext:context];
  fourth.title = @"C/C++ Essential";
  fourth.author = @"Henry AT";
  fourth.releaseDate = [dateFormatter dateFromString:@"19 Jun 2015"];
  [fourth simpleMethod];
  
  // Fifth Course Object
  Course *fifth = (Course *)[NSEntityDescription insertNewObjectForEntityForName:@"Course" inManagedObjectContext:context];
  fifth.title = @"Cocoa Essential";
  fifth.author = @"Henry AT";
  fifth.releaseDate = [dateFormatter dateFromString:@"19 Jun 2015"];
  [fifth simpleMethod];
  
  // Save the Managed Object Context
  
  NSError *error = nil;
  
  if (![context save:&error]) {
    NSLog(@"An Error! %@",error);
  } else{
    NSLog(@"Todo se grabo OK..");
  }
  
}

- (IBAction)btnFetchManagedObject:(id)sender {

  NSManagedObjectContext *context = ((AppDelegate *)[[NSApplication sharedApplication] delegate]).managedObjectContext;
  
  NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
  NSEntityDescription *entity = [NSEntityDescription entityForName:@"Course" inManagedObjectContext:context];
  [fetchRequest setEntity:entity];
  
  
  NSError *error = nil;
  NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
  if (fetchedObjects == nil) {
    NSLog(@"Problme! %@",error);
  }
  
  for (Course * c in fetchedObjects) {
    NSLog(@"Course: %@ by author: %@",c.title, c.author);
  }
  
}












@end
