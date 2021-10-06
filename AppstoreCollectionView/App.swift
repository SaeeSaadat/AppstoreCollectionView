//
//  App.swift
//  AppstoreCollectionView
//
//  Created by Saee Saadat on 10/6/21.
//

import Foundation

struct App: Decodable, Hashable {
    let id: Int
    let tagline: String
    let name: String
    let subheading: String
    let image: String
    let iap: Bool
}
