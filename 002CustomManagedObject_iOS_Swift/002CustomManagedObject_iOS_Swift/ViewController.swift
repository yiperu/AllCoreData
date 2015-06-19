//
//  ViewController.swift
//  002CustomManagedObject_iOS_Swift
//
//  Created by Henry AT on 6/19/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  
  

  @IBAction func btnCreatedCustommanagedObject(sender: AnyObject) {
    
    
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    var context: NSManagedObjectContext? = appDelegate.managedObjectContext
//    let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext    // Est funciona Perfectamente
    
    
    
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

