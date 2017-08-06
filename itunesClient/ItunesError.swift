//
//  ItunesError.swift
//  itunesClient
//
//  Created by Leke Abolade on 06/08/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import Foundation

enum ItunesError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case jsonParsingFailing(message: String)
}
