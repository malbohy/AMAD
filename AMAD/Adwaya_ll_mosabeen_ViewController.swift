//
//  Adwaya_ll_mosabeen_ViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 4/17/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit
import PDFKit

class Adwaya_ll_mosabeen_ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var slides: UICollectionView!
    @IBOutlet weak var stackVIew: UIStackView!
    @IBOutlet weak var stackViewHight: NSLayoutConstraint!
    var pageControlllerSlides: UIPageControl = UIPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides.dataSource = self
        slides.delegate = self
        
        //        slidesHight.constant = self.view.frame.size.height / 3
        stackViewHight.constant = self.view.frame.size.height - 200
        // Do any additional setup after loading the view.
        setupPageIndecator()
    }
    
    
    
    
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
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.row {
        case 0: return getCell(with: "firstCell", for: indexPath)
        case 1: return getCell(with: "cell2", for: indexPath)
        default: return getCell(with: "cell3", for: indexPath)
        }
        
    }
    
    
    
    func getCell(with name:String, for indexPath:IndexPath)->UICollectionViewCell{
        
        let cell = slides.dequeueReusableCell(withReuseIdentifier: name, for: indexPath)
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height)
    }
    
    
    @IBAction func openPDFFile(_ sender: UIButton) {
        print("button clicked")
        
        let pdf = PDFViewerViewController()
        pdf.pdfFileName = "table_2"
        pdf.modalPresentationStyle = .fullScreen
        self.present(pdf, animated: true, completion: nil)
        
        
    }
    
    
}
