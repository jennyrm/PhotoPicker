//
//  PPTitleLabel.swift
//  PhotoPicker
//
//  Created by Jenny Morales on 11/22/21.
//

import UIKit

class PPTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        backgroundColor = .systemPink
    }
    
}
