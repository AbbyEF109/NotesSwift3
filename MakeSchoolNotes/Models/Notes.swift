//
//  Notes.swift
//  MakeSchoolNotes
//
//  Created by Abby on 8/24/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//
import CoreData
import UIKit
@objc(Note)
public class Note: NSManagedObject {
    @NSManaged public var title: String?
    @NSManaged public var content: String?
    @NSManaged public var modificationTime: Date?
    convenience init() {
        let appDelegate =   UIApplication.shared.delegate as! AppDelegate
        let persistentContainer = appDelegate.persistentContainer
        let managedContext = persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Note", in: managedContext)
        self.init(entity: entity!, insertInto: managedContext)
    }
}
