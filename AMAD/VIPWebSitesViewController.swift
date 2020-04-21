//
//  VIPWebSitesViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 4/17/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit
import RxSwift
import RxGesture

class VIPWebSitesViewController: UIViewController {
    
    @IBOutlet weak var website1: UILabel!
    @IBOutlet weak var website2: UILabel!
    @IBOutlet weak var webSite3: UILabel!
    @IBOutlet weak var website4: UILabel!
    @IBOutlet weak var website5: UILabel!
    @IBOutlet weak var website6: UILabel!
    @IBOutlet weak var website7: UILabel!
    
    let disposeBag = DisposeBag()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setUpRX()
        
        
        
        
    }
    
    private func setUpRX(){
        website1.rx
            .tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self](_) in
                guard let self = self else {return}
                self.openInBrowser(link: self.website1.text!)
            })
            .disposed(by: disposeBag)
        
        website2.rx
            .tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self](_) in
                guard let self = self else {return}
                self.openInBrowser(link: self.website2.text!)
            })
            .disposed(by: disposeBag)
        
        
        webSite3.rx
            .tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self](_) in
                print("tapped")
                guard let self = self else {return}
                print("tapped")
                self.openInBrowser(link: self.webSite3.text!)
            })
            .disposed(by: disposeBag)
        
        
        
        website4.rx
            .tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self](_) in
                guard let self = self else {return}
                self.openInBrowser(link: self.website4.text!)
            })
            .disposed(by: disposeBag)
        
        
        
        website5.rx
            .tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self](_) in
                guard let self = self else {return}
                self.openInBrowser(link: self.website5.text!)
            })
            .disposed(by: disposeBag)
        
        
        
        website6.rx
            .tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self](_) in
                guard let self = self else {return}
                self.openInBrowser(link: self.website6.text!)
            })
            .disposed(by: disposeBag)
        
        
        website7.rx
            .tapGesture()
            .when(.recognized)
            .subscribe(onNext: { [weak self](_) in
                guard let self = self else {return}
                self.openInBrowser(link: self.website7.text!)
            })
            .disposed(by: disposeBag)
        
        
        
        
    }
    
    
    
    private func openInBrowser(link:String){
        guard let url = URL(string: link) else { return }
        UIApplication.shared.open(url)
    }
    
    
    
    
}
