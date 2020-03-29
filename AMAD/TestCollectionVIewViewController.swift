//
//  TestCollectionVIewViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 3/29/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class TestCollectionVIewViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    @IBOutlet weak var collectionViewTest: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionViewTest.delegate = self
        collectionViewTest.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCell", for: indexPath)
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath)
            return cell
            
        
            
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath)
            return cell
        }
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
