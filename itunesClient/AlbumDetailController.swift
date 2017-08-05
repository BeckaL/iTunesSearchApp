//
//  AlbumDetailController.swift
//  itunesClient
//
//  Created by Leke Abolade on 05/08/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import UIKit

class AlbumDetailController: UITableViewController {
    
    var album: Album?
    
    @IBOutlet weak var artworkView: UIImageView!
    
    @IBOutlet weak var albumTitleLabel: UILabel!
    
    @IBOutlet weak var albumGenreLabel: UILabel!
    
    @IBOutlet weak var albumReleaseDateLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let album = album {
            configure(with: album)
        }
        
    }

    func configure(with album: Album) {
        let viewModel = AlbumDetailViewModel(album: album)
        
        albumTitleLabel.text = viewModel.title
        albumGenreLabel.text = viewModel.genre
        albumReleaseDateLabel.text = viewModel.releaseDate
    }

}
