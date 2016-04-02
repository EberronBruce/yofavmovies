//
//  Movie+CoreDataProperties.swift
//  yofavmovies
//
//  Created by Bruce Burgess on 4/2/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var descr: String?
    @NSManaged var plot: String?
    @NSManaged var url: String?

}
