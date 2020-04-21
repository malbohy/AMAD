//
//  Tanafos_botenyViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 3/29/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class Tanafos_botenyViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var slides: UICollectionView!
    
    
    @IBOutlet weak var stackVIew: UIStackView!
    @IBOutlet weak var stackViewHight: NSLayoutConstraint!
    
    var thisWidth:CGFloat = 0

    override func awakeFromNib() {
        super.awakeFromNib()
        thisWidth = CGFloat(self.view.frame.width)
         pageControlllerSlides.hidesForSinglePage = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        slides.dataSource = self
        slides.delegate = self
        
//        slidesHight.constant = self.view.frame.size.height / 3
        stackViewHight.constant = self.view.frame.size.height - 200
        // Do any additional setup after loading the view.
//        setScrollIndicatorColor(color: UIColor.red)
        setupPageIndecator()
        
    }
    var pageControlllerSlides: UIPageControl = UIPageControl()
    
    func setupPageIndecator(){
        let heightConstraint = NSLayoutConstraint(item: self.pageControlllerSlides, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 5)
        NSLayoutConstraint.activate([heightConstraint])
        self.pageControlllerSlides.backgroundColor = .clear
        self.pageControlllerSlides.pageIndicatorTintColor = UIColor.gray
        self.pageControlllerSlides.currentPageIndicatorTintColor = UIColor.orange
        self.stackVIew.addArrangedSubview(self.pageControlllerSlides)
        print("\n\n\n\n\n\n")
        print(self.slides.numberOfItems(inSection: 0))
        print("\n\n\n\n\n\n")
        self.pageControlllerSlides.numberOfPages = self.slides.numberOfItems(inSection: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.pageControlllerSlides.currentPage = indexPath.row
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height)
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
