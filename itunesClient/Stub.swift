//
//  Stub.swift
//  itunesClient
//
//  Created by Leke Abolade on 05/08/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import Foundation

struct Stub {
    static var artist: Artist {
        return Artist(id: 368183298, name: "Kendrick Lamar", primaryGenre: .hipHopRap, albums: [])
    }
    
    static var albums: [Album] {
        let toPimpAButterfly = Album(id: 974187289, artistName: "Kendrick Lamar", name: "To Pimp a Butterfly", censoredName: "To Pimp a Butterfly", artworkUrl: "http://is1.mzstatic.com/image/thumb/Music1/v4/dc/1d/80/dc1d8084-4240-606c-27d9-6eb0927c3839/source/100x100bb.jpg", isExplicit: true, numberOfTracks: 17, releaseDate: Date(), primaryGenre: .hipHopRap)
        
        let damn = Album(id: 1223592280, artistName: "Kendrick Lamar", name: "DAMN", censoredName: "DAMN", artworkUrl: "http://is4.mzstatic.com/image/thumb/Music111/v4/56/46/3f/56463f62-0d8d-3595-368b-38a995f10e36/source/100x100bb.jpg", isExplicit: true, numberOfTracks: 15, releaseDate: Date(), primaryGenre: .hipHopRap)
        
        return [toPimpAButterfly, damn]
    }
    
    static var songs: [Song] {
        let kingKunta = Song(id: 974187298, name: "King Kunta", censoredName: "King Kunta", trackTime: 234690, isExplicit: true)
        
        let alright = Song(id: 974189346, name: "Alright", censoredName: "Alright", trackTime: 219337, isExplicit: true)
        
        return [kingKunta, alright]
    }
}
