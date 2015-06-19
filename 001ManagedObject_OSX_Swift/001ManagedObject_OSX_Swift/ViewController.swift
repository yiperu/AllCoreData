//
//  ViewController.swift
//  001ManagedObject_OSX_Swift
//
//  Created by Henry AT on 6/17/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import Cocoa

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


  @IBAction func btnCreatedObject(sender: AnyObject) {
    
    let appDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
     var context: NSManagedObjectContext? = appDelegate.managedObjectContext
    
    let entity = NSEntityDescription.entityForName("Course", inManagedObjectContext: context!)
    let course = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: context)
    course.setValue("Curso de CoreData for iOS and OS X en Swift", forKey: "title")
    course.setValue("Henry", forKey: "author")
    course.setValue(NSDate(), forKey: "releaseDate")

    // Ahora grabaremos, para no tener la necesidad de salir del Simulador
    var error: NSError?
    

    if((context?.save(&error)) != nil){
      println("Todo se grabo OK..")
    }else{
      println("An Error! \(error!.localizedDescription)")
    }
    
    
//    NSError *error = nil
//    
//    if (![context save:&error]) {
//      NSLog(@"An Error! %@",error);
//    } else{
//      NSLog(@"Todo se grabo OK..");
//    }
    
    
  }
  
  
  
  
}

