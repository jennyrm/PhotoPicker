//
//  MainPageVC.swift
//  PhotoPicker
//
//  Created by Jenny Morales on 11/21/21.
//

import UIKit

class MainPageVC: UIViewController {
    
    let cameraButton = PPButton(title: "Camera", image: UIImage(systemName: SFSymbols.camera)!)
    let downloadButton = PPButton(title: "Download Images", image: UIImage(systemName: SFSymbols.download)!)
    let savedPhotosButton = PPButton(title: "Saved Photos", image: UIImage(systemName: SFSymbols.savedPhotos)!)
    
    var itemViews = [UIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureButtons()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
    }
    
    func configureButtons() {
        itemViews = [cameraButton, downloadButton, savedPhotosButton]
        
        let padding: CGFloat = 20
        let itemHeight: CGFloat = 180
        
        for itemView in itemViews {
            view.addSubview(itemView)
            
            NSLayoutConstraint.activate([
                itemView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
                itemView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
            ])
        }
        
        NSLayoutConstraint.activate([
            cameraButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            cameraButton.heightAnchor.constraint(equalToConstant: itemHeight),
            
            downloadButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            downloadButton.heightAnchor.constraint(equalToConstant: itemHeight),
            
            savedPhotosButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
            savedPhotosButton.heightAnchor.constraint(equalToConstant: itemHeight)
        ])
        
        cameraButton.addTarget(self, action: #selector(openCamera), for: .touchUpInside)
        downloadButton.addTarget(self, action: #selector(downloadImages), for: .touchUpInside)
        savedPhotosButton.addTarget(self, action: #selector(openSavedPhotos), for: .touchUpInside)
    }
    
    @objc func openCamera() {
        
    }
    
    @objc func downloadImages() {
        
    }
    
    @objc func openSavedPhotos() {
        let savedPhotos = SavedPhotosVC()
        
        navigationController?.pushViewController(savedPhotos, animated: true)
    }

}//End of class

extension MainPageVC: UIImagePickerControllerDelegate {
    
}
