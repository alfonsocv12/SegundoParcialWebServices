//
//  StudentCollectionViewCell.swift
//  SegundoParcialWebServices
//
//  Created by apple on 3/26/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import Kingfisher

class StudentCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgStudent: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    var studentElement: Student? {
        didSet {
            self.lblName.text = self.studentElement?.name
            let urlImage = URL(string: self.studentElement!.imgURL!)
            imgStudent.kf.setImage(with: urlImage)
            
            imgStudent.layer.borderWidth = 1
            imgStudent.layer.masksToBounds = false
            imgStudent.layer.borderColor = UIColor.black.cgColor
            imgStudent.layer.cornerRadius = imgStudent.frame.height/2
            imgStudent.clipsToBounds = true
        }
    }
}
