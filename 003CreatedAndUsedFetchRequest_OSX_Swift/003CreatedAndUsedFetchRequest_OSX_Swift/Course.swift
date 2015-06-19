//
//  Course.swift
//  
//
//  Created by Henry AT on 6/19/15.
//
//

import Foundation
import CoreData

class Course: NSManagedObject {

    @NSManaged var releaseDate: NSDate
    @NSManaged var author: String
    @NSManaged var title: String

  func simpleMethod(){
    println("Comportamiento Personalizado")
  }
  
}
