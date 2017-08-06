//
//  ItunesAPIClient.swift
//  itunesClient
//
//  Created by Leke Abolade on 06/08/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import Foundation

class ItunesAPIClient {
    let downloader = JSONDownloader()
    
    func searchForArtists(withTerm term: String, completion: @escaping ([Artist], ItunesError?) -> Void) {
        let endpoint = Itunes.search(term: term, media: ItunesMedia.music(entity: MusicEntity.musicArtist, attribute: MusicAttribute.artistTerm))
        
        let task = downloader.jsonTask(with: endpoint.request) { json, error in
            DispatchQueue.main.async {
                guard let json = json else {
                    completion([], error)
                    return
                }
                guard let results = json["results"] as? [[String: Any]] else {
                    completion([], ItunesError.jsonParsingFailing(message: "JSON data does not contain result"))
                    return
                }
                
                let artists = results.flatMap { Artist(json: $0)}
                
                completion(artists, nil)
            }
            
        }
        task.resume()
    }
}
