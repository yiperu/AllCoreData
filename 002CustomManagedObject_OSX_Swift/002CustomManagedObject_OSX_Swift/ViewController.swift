//
//  ViewController.swift
//  002CustomManagedObject_OSX_Swift
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


  
  @IBAction func btnCreatedCustomManagedObject(sender: AnyObject) {
    
    
    let appDelegate = NSApplication.sharedApplication().delegate as! AppDelegate
    var context: NSManagedObjectContext? = appDelegate.managedObjectContext
    
    
    let course = NSEntityDescription.insertNewObjectForEntityForName("Course", inManagedObjectContext: context!) as! Course
    
    course.title = "Curso de CoreData for iOS and OS X en Swift"
    course.author = "Henry"
    course.releaseDate = NSDate()
    
    course.simpleMethod()
    // Ahora grabaremos, para no tener la necesidad de salir del Simulador
    var error: NSError?
    
    if((context?.save(&error)) != nil){
      println("Todo se grabo OK..")
    }else{
      println("An Error! \(error!.localizedDescription)")
    }
    
    
    
  }
}

