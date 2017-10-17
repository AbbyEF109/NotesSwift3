//
//  Note+CoreDataProperties.swift
//  MakeSchoolNotes
//
//  Created by Abby on 10/17/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note");
    }

    @NSManaged public var content: String?
    @NSManaged public var modificationTime: NSDate?
    @NSManaged public var title: String?

}
