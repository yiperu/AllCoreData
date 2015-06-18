//
//  ViewController.swift
//  001ManagedObject_iOS_Swift
//
//  Created by Henry AT on 6/18/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    

    let optionalSupportDirectoryURL = NSFileManager.defaultManager().URLForDirectory(.ApplicationSupportDirectory, inDomain: .AllDomainsMask, appropriateForURL: nil, create: true, error: nil)
  println(optionalSupportDirectoryURL)
/*
    var error: NSError?
    let documentURL : NSURL = NSFileManager.defaultManager().URLForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomain: NSSearchPathDomainMask.UserDomainMask, appropriateForURL: nil, create: true, error: &error)
    var isDirectory: ObjCBool = ObjCBool(0)
    if NSFileManager.defaultManager().fileExistsAtPath(documentURL.path, isDirectory: &isDirectory) {
    println(isDirectory)
    }
*/

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//  NSLog(@"Documents Directory:|%@|",[[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject]);
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBAction func btnCreatedManagedObject(sender: AnyObject) {
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    var context: NSManagedObjectContext? = appDelegate.managedObjectContext
    
    let entity = NSEntityDescription.entityForName("Course", inManagedObjectContext: context!)
    let course = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: context)
    course.setValue("Curso de CoreData for iOS and OS X en Swift", forKey: "title")
    course.setValue("Henry", forKey: "author")
    course.setValue(NSDate(), forKey: "releaseDate")
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

}

