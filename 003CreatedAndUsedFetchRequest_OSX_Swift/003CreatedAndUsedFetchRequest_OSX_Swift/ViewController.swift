//
//  ViewController.swift
//  003CreatedAndUsedFetchRequest_OSX_Swift
//
//  Created by Henry AT on 6/19/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import Cocoa
import CoreData

class ViewController: NSViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  override var representedObject: AnyObject? {
    didSet {
    // Update the view, if already loaded.
    }
  }

  
  @IBAction func btnCreatedManagedObject(sender: AnyObject) {
    
//    let appDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
//    var context: NSManagedObjectContext? = appDelegate.managedObjectContext
    var context: NSManagedObjectContext? = (NSApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    
    let formatter = NSDateFormatter()
    //format yyyy-MM-dd like 2015-02-23
    formatter.dateFormat = "dd MMM yyyy";
    
    //format mm-dd-yy like 02-23-15
//    formatter.dateStyle = .ShortStyle;
    //format feb 02, 2015
//    formatter.dateStyle = .MediumStyle;
    
    
// First Course Object
    let first = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: context!) as! Course
    first.title = "Cocoa Essential"
    first.author = "Henry"
    first.releaseDate = NSDate()
    first.simpleMethod()
    
    // Second Course Object
    let second = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: context!) as! Course
    second.title = "Curso de CoreData for OS X en Swift"
    second.author = "Henry"
    second.releaseDate = NSDate()
    second.simpleMethod()
    
    // Third Course Object
    let third = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: context!) as! Course
    third.title = "iOS SDK"
    third.author = "Henry"
    third.releaseDate = NSDate()
    third.simpleMethod()
    
    // Fourth Course Object
    let fourth = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: context!) as! Course
    fourth.title = "Java Essential"
    fourth.author = "Henry"
    fourth.releaseDate = NSDate()
    fourth.simpleMethod()
    
    // Fifth Course Object
    let fifth = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: context!) as! Course
    fifth.title = "C/C++ Essential"
    fifth.author = "Henry"
    fifth.releaseDate = NSDate()
    fifth.simpleMethod()
    
  // Save the Managed Object Context
    
    // Ahora grabaremos, para no tener la necesidad de salir del Simulador
    var error: NSError?
    
    if((context?.save(&error)) != nil){
      println("Todo se grabo OK..")
    }else{
      println("An Error! \(error!.localizedDescription)")
    }
    
    
    
  }
  
  @IBAction func btnFetchManagedObject(sender: AnyObject) {
    
    
    var context: NSManagedObjectContext? = (NSApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    
    var fetchRequest: NSFetchRequest = NSFetchRequest(entityName: "Course")
    
    var error: NSError?
    var fetchedObjects = context!.executeFetchRequest(fetchRequest, error:&error)
    if(fetchedObjects == nil){
      println("Problem! \(error)")
    }
    
    for resultItem in fetchedObjects! {
      var courseItem = resultItem as! Course
      println("Course: \(courseItem.title) by author: \(courseItem.author)")
    }

    
    
   
    
  }

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}

