//
//  QueryItemProvider.swift
//  itunesClient
//
//  Created by Leke Abolade on 06/08/2017.
//  Copyright © 2017 Leke Abolade. All rights reserved.
//

import Foundation

protocol QueryItemProvider {
    var queryItem: URLQueryItem { get }
}
