//
//  PPButton.swift
//  PhotoPicker
//
//  Created by Jenny Morales on 11/22/21.
//

import UIKit

class PPButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String, image: UIImage) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.setImage(image, for: .normal)

        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        backgroundColor = .secondarySystemBackground
        imageView?.tintColor = .systemPink
        setTitleColor(.systemGray, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        semanticContentAttribute = .forceRightToLeft
        imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        
//        transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
//        titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
//        imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        
        translatesAutoresizingMaskIntoConstraints = false
    }

}
