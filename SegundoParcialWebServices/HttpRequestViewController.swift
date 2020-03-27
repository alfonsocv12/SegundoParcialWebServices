//
//  HttpRequestViewController.swift
//  SegundoParcialWebServices
//
//  Created by apple on 3/26/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import Alamofire

class HttpRequestViewController: UIViewController,
    UICollectionViewDelegate, UICollectionViewDataSource{
    var studentElementsArray: [Student]? = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return studentElementsArray?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StudentCollection", for: indexPath) as? StudentCollectionViewCell
        cell!.studentElement = studentElementsArray![indexPath.row]
        return cell!
    }
    
    @IBOutlet weak var studentCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "The best Team"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        AF.request("http://www.mocky.io/v2/5e7d02bb3500007f8806a29").validate().responseDecodable(of: [Student].self) { (response) in guard let studentElements = response.value else {
                return
            }
            print(studentElements)
            
            DispatchQueue.main.async {
                self.studentElementsArray = studentElements
                self.studentCollection.reloadData()
            }
        }
    }
}
