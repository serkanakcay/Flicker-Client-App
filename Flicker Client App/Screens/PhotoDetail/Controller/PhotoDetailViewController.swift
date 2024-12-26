//
//  PhotoDetailViewController.swift
//  Flicker Client App
//
//  Created by serkan on 24.12.2024.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var ownerImageView: UIImageView!
    
    @IBOutlet weak var ownerNameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.backgroundColor = .gray
        ownerImageView.backgroundColor = .darkGray
        ownerNameLabel.text = "Owner Name"
        descriptionLabel.text = "Description Description Description Description Description Description Description Description Description Description Description Description"
    }
  

}
