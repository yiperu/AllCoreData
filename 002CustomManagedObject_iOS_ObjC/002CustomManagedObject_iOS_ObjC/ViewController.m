//
//  ViewController.m
//  002CustomManagedObject_iOS_ObjC
//
//  Created by Henry AT on 6/19/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)btnCreatedCustomManagedObject:(id)sender {
  
  AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
  NSManagedObjectContext *context = appDelegate.managedObjectContext;
  

  Course *course = (Course *)[NSEntityDescription insertNewObjectForEntityForName:@"Course" inManagedObjectContext:context];
  
  course.title = @"Curso de CoreData for iOS and OS X con Objetive-C";
  course.author = @"Henry AT";
  course.releaseDate = [NSDate date];
  
  [course simpleMethod];
  // Ahora grabaremos, para no tener la necesidad de salir del Simulador
  
  NSError *error = nil;
  
  if (![context save:&error]) {
    NSLog(@"An Error! %@",error);
  } else{
    NSLog(@"Todo se grabo OK..");
  }
  
  
  
}
@end
