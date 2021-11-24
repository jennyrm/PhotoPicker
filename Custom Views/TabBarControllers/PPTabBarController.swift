//
//  PPTabBarController.swift
//  PhotoPicker
//
//  Created by Jenny Morales on 11/21/21.
//

import UIKit

class PPTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [createSavedPhotos()]
    }
    
//    private func createPhotoPickerVC() -> UIViewController {
//        let photoPickerVC = PhotoPickerVC()
//        photoPickerVC.title = "Photo Picker"
//        photoPickerVC.tabBarItem = UITabBarItem(title: "Photo Picker", image: UIImage(named: ""), tag: 0)
//
//        return UINavigationController(rootViewController: photoPickerVC)
//    }
    
    private func createSavedPhotos() -> UIViewController {
        let savedPhotosVC = SavedPhotosVC()
        savedPhotosVC.title = "Saved Photos"
        savedPhotosVC.tabBarItem = UITabBarItem(title: "Saved Photos", image: UIImage(named: ""), tag: 1)
        
        return UINavigationController(rootViewController: savedPhotosVC)
    }

}
