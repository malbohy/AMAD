//
//  anwa3_tasalobViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 5/7/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit

class anwa3_tasalobViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func openPDFButton(_ sender: Any) {
        
        let pdf = PDFViewerViewController()
        pdf.pdfFileName = "table_1"
        pdf.modalPresentationStyle = .fullScreen
        self.present(pdf, animated: true, completion: nil)
        
        
    }
    
}
