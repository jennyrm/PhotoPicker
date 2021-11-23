//
//  SavedPhotosVC.swift
//  PhotoPicker
//
//  Created by Jenny Morales on 11/21/21.
//

import UIKit

class SavedPhotosVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
