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
  

  AppDelegate *appDelegate = (AppDelegate *)[[NSApplication sharedApplication] delegate];
  NSManagedObjectContext *context = appDelegate.managedObjectContext;
  
  NSManagedObject *course = [NSEntityDescription insertNewObjectForEntityForName:@"Course" inManagedObjectContext:context];
  
  [course setValue:@"Curso de CoreData for iOS and OS X con Objetive-C" forKey:@"title"];
  [course setValue:@"Henry AT" forKey:@"author"];
  [course setValue:[NSDate date] forKey:@"releaseDate"];
  
  
}

























































@end
