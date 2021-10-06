//
//  Section.swift
//  AppstoreCollectionView
//
//  Created by Saee Saadat on 10/6/21.
//

import Foundation

struct Section: Decodable, Hashable {
    let id: Int
    let type: String
    let title: String
    let subtitle: String
    let items: [App]
}
