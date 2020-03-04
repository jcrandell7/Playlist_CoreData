//
//  CoreDataStack.swift
//  PlaylistCoredata
//
//  Created by Apple on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation
import CoreData

//this file has one and a half job. 1. create core data stack 2. a little handy dandy thing to pass info around.

enum CoreDataStack {
    static let container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "PlaylistCoredata")
        //the line below says do this and tell me when you're done. because i need to handle it.
        container.loadPersistentStores { (_, error) in
            if let error = error {
                fatalError("Failed to load persistent sotres\(error)")
            }
        }
        return container
    }()
    
    static var moc: NSManagedObjectContext {
        return container.viewContext
    }
}
