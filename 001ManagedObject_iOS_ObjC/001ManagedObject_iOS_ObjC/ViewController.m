//
//  ViewController.m
//  001ManagedObject_iOS_ObjC
//
//  Created by Henry AT on 6/17/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  NSLog(@"Documents Directory:|%@|",[[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject]);
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)btnCreatedObject:(id)sender {
  
  AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
  NSManagedObjectContext *context = appDelegate.managedObjectContext;
  
  NSManagedObject *course = [NSEntityDescription insertNewObjectForEntityForName:@"Course" inManagedObjectContext:context];
  
  [course setValue:@"Curso de CoreData for iOS and OS X con Objetive-C" forKey:@"title"];
  [course setValue:@"Henry AT" forKey:@"author"];
  [course setValue:[NSDate date] forKey:@"releaseDate"];
  
  
}























@end
