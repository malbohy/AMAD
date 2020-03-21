//
//  ViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 3/20/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
//    var screenDataString:[String] = []
//    var screenTitle:String = ""
    
    var screenContent:TemplateScreen?
    @IBOutlet weak var screenTitleLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var containerVIew: UIView!
    @IBOutlet weak var scrolableContent: UIView!
    @IBOutlet weak var screenData: UIView!
    @IBOutlet weak var contentStack: UIStackView!
    @IBOutlet weak var screenContentHightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        localDummyData()
        setupScreenUI()
        setupScreenContent()
        
        
    }
    
//    func localDummyData(){
//
//        for i in 0..<20{
//            print("added data")
//            self.screenDataString.append("Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy Mohamed . mohamed . albohy ")
//        }
//    }
    
    func setupScreenUI(){
        scrollView.contentInset = UIEdgeInsets.zero;
        scrollView.scrollIndicatorInsets = UIEdgeInsets.zero;
        scrollView.contentOffset = CGPoint(x: 0, y: 0)
        screenData.applyBorder(width: 3, cornerRadius: 10, borderColor: .orange)
    }
    
    func setupScreenContent(){
        guard let screenContent = self.screenContent else{
            print("screen content is empty")
            return
        }
        if screenContent.screenContent.count > 0{
            screenTitleLabel.text = screenContent.screenTitle
            for label in screenContent.screenContent{
                let firstLabel = UILabel()
                firstLabel.numberOfLines = 0
                firstLabel.textAlignment = .right
//                firstLabel.frame.size.height = 30
//                firstLabel.backgroundColor = .green
                firstLabel.text = label
                firstLabel.minimumScaleFactor = 0.1
                firstLabel.lineBreakMode = .byTruncatingMiddle
                self.contentStack.addArrangedSubview(firstLabel)
            }
            
        }else{
            print("screen content data array is empty")
        }
        
        
        
    }
    
    @IBAction func homeButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func infoButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func addressBookButtonTapped(_ sender: UIButton) {
        
    }
    
    
    
}


