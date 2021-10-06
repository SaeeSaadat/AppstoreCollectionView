//
//  FeaturedCellCollectionViewCell.swift
//  AppstoreCollectionView
//
//  Created by Saee Saadat on 10/6/21.
//

import UIKit

class FeaturedCellCollectionViewCell: UICollectionViewCell, SelfConfiguringCell {
    static var reuseIdentifier: String = "FeaturedCell"
    
    let tagLabel = UILabel()
    let nameLabel = UILabel()
    let subtitleLabel = UILabel()
    let imageView = UIImageView()
    
    private func commonInit() {
        tagLabel.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 12, weight: .bold))
        tagLabel.textColor = .systemBlue
        
        nameLabel.font = .preferredFont(forTextStyle: .title2)
        nameLabel.textColor = .label
        
        subtitleLabel.font = .preferredFont(forTextStyle: .title2)
        subtitleLabel.textColor = .secondaryLabel
        
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        
        let stackView = UIStackView(arrangedSubviews: [tagLabel, nameLabel, subtitleLabel, imageView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        contentView.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        stackView.setCustomSpacing(10, after: subtitleLabel)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
        
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    
    func configure(with app: App) {
        
        tagLabel.text = app.tagline.uppercased()
        nameLabel.text = app.name
        subtitleLabel.text = app.subheading
        imageView.image = UIImage(named: app.image)
        
    }
    
    
}
