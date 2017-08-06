//
//  ViewController.swift
//  itunesClient
//
//  Created by Leke Abolade on 18/06/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchEndpoint = Itunes.search(term: "Kendrick Lamar", media: ItunesMedia.music(entity: MusicEntity.mix, attribute: MusicAttribute.mixTerm))
        let lookupEndpoint = Itunes.lookup(id: 1234, entity: MusicEntity.musicArtist)
        
        print(lookupEndpoint.request)
        print("********************")
        print(searchEndpoint.request)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

