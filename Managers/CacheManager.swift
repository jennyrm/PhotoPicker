//
//  CacheManager.swift
//  PhotoPicker
//
//  Created by Jenny Morales on 11/24/21.
//

import UIKit

class CacheManager {
    
    static let shared = CacheManager()
    let cache = NSCache<NSString, UIImage>()
    
    private init() {}
    
    
    
}
