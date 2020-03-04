//
//  Song+Convenience.swift
//  PlaylistCoredata
//
//  Created by Apple on 3/4/20.
//  Copyright © 2020 Trevor Walker. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    
    convenience init(title: String, artist: String, playlist: Playlist, moc: NSManagedObjectContext = CoreDataStack.moc) {
        self.init(context: moc)
        self.title = title
        self.artist = artist
        self.playlist = playlist
    }
}
