//
//  PDFViewerViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 5/7/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit
import PDFKit

class PDFViewerViewController: UIViewController {

    @IBOutlet weak var pdfContainer: UIView!
    var pdfFileName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadPDF()
    }

    
    func loadPDF(){
          let pdfView = PDFView()
        
          pdfView.translatesAutoresizingMaskIntoConstraints = false
          pdfContainer.addSubview(pdfView)

          pdfView.leadingAnchor.constraint(equalTo: pdfContainer.safeAreaLayoutGuide.leadingAnchor).isActive = true
          pdfView.trailingAnchor.constraint(equalTo: pdfContainer.safeAreaLayoutGuide.trailingAnchor).isActive = true
          pdfView.topAnchor.constraint(equalTo: pdfContainer.safeAreaLayoutGuide.topAnchor).isActive = true
          pdfView.bottomAnchor.constraint(equalTo: pdfContainer.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        if pdfFileName != ""{
            guard let path = Bundle.main.url(forResource: pdfFileName, withExtension: "pdf") else { return }

            if let document = PDFDocument(url: path) {
                pdfView.document = document
            }
        }
        
          pdfView.scaleFactor = 0.1
    }
    
    @IBAction func dismissButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
