//
//  Artist.swift
//  itunesClient
//
//  Created by Leke Abolade on 18/06/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import Foundation

class Artist {
    let id: Int
    let name: String
    
    let primaryGenre: Genre
    var albums: [Album]
    
    init(id: Int, name: String, primaryGenre: Genre, albums: [Album]) {
        self.id = id
        self.name = name
        self.primaryGenre = primaryGenre
        self.albums = albums
    }
    
}
