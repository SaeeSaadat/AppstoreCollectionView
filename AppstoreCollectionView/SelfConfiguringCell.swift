//
//  SelfConfiguringCell.swift
//  AppstoreCollectionView
//
//  Created by Saee Saadat on 10/6/21.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseIdentifier: String { get }
    func configure(with app: App)
}
