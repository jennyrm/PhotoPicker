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
        
        let padding: CGFloat = 50
        let itemHeight: CGFloat = 180
        
        for itemView in itemViews {
            view.addSubview(itemView)
            
            NSLayoutConstraint.activate([
                itemView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
                itemView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
            ])
        }
        
        NSLayoutConstraint.activate([
            cameraButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 85),
            cameraButton.heightAnchor.constraint(equalToConstant: itemHeight),
            
            downloadButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            downloadButton.bottomAnchor.constraint(equalTo: savedPhotosButton.topAncho, constant: 100),
            downloadButton.heightAnchor.constraint(equalToConstant: itemHeight),
            
            savedPhotosButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            savedPhotosButton.heightAnchor.constraint(equalToConstant: itemHeight)
        ])
        
        cameraButton.addTarget(self, action: #selector(openCamera), for: .touchUpInside)
        downloadButton.addTarget(self, action: #selector(downloadImages), for: .touchUpInside)
        savedPhotosButton.addTarget(self, action: #selector(openSavedPhotos), for: .touchUpInside)
    }
    
    @objc func openCamera() {
        presentImagePickerActionSheet()
    }
    
    @objc func downloadImages() {
        
    }
    
    @objc func openSavedPhotos() {
        let savedPhotos = SavedPhotosVC()
        
        navigationController?.pushViewController(savedPhotos, animated: true)
    }

}//End of class

extension MainPageVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func presentImagePickerActionSheet() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        let actionSheet = UIAlertController(title: "Camera", message: nil, preferredStyle: .actionSheet)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (_) in
                imagePickerController.sourceType = UIImagePickerController.SourceType.camera
                self.present(imagePickerController, animated: true)
            }))
        }
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(actionSheet, animated: true)
    }
}
