//
//  ArtworkDownloader.swift
//  itunesClient
//
//  Created by Leke Abolade on 06/08/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import Foundation
import UIKit

class ArtworkDownloader: Operation {
    let album: Album
    
    init(album: Album) {
        self.album = album
        super.init()
    }
    
    override func main() {
        if self.isCancelled {
            return
        }
        
        guard let url = URL(string: album.artworkURL) else {
            return
        }
        
        let imageData = try! Data(contentsOf: url)
        
        if self.isCancelled {
            return
        }
        
        if imageData.count > 0 {
            album.artwork = UIImage(data: imageData)
            album.artworkState = .downloaded
        } else {
            album.artworkState = .failed
        }
    }
}
