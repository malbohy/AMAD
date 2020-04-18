//
//  Tazker_bel_gor3atViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 4/17/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit
import DropDown

class Tazker_bel_gor3atViewController: UIViewController {

    @IBOutlet weak var esmElDwarButton: UIButton!
    @IBOutlet weak var times: UIButton!
    @IBOutlet weak var timePickerButton: UIButton!
    let timePicker: UIDatePicker = UIDatePicker()
    
    private var selectedDate:String = ""
    private var drageSechdualType = ""
    private var drageName = ""
    
    
    
    let dragsNames = UIAlertController(title: "اسم الدواء", message: "", preferredStyle: UIAlertController.Style.actionSheet)
    let dragsTimes = UIAlertController(title: "فئه الجرعه", message: "", preferredStyle: UIAlertController.Style.actionSheet)
    let timesPickers = UIAlertController(title: "\n\n\n\n\n\n\n\n\n\n", message: "", preferredStyle: UIAlertController.Style.actionSheet)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        esmAlDwa2Menu()
        dragTimes()
        showTimes()
        
  

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func esmElDwa2(_ sender: Any) {
        
        self.present(dragsNames, animated: true, completion: nil)
    }
    
    @IBAction func el_gor3a(_ sender: Any) {
        self.present(dragsTimes, animated: true, completion: nil)
    }
    
    
    @IBAction func timePickerClicked(_ sender: Any) {
        self.present(timesPickers, animated: true, completion: nil)
    }
    
    
    
    func esmAlDwa2Menu(){
        
        let dragsNamesContent = ["Aubagio", "Avonex","Betaseron","Gilenya","Lemtrada","Ocrevus","Rebif","Tysabri","Tecfidera","Fingolin"]
        
        for drag in dragsNamesContent{
            let action = UIAlertAction(title: drag, style: .default) { (action: UIAlertAction) in
                self.esmElDwarButton.setTitle(drag, for: .normal)
            }
            dragsNames.addAction(action)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        dragsNames.addAction(cancelAction)
    }
    
    func dragTimes(){
        
        let dragsNamesContent = ["يوميه","اسبوعيه","مره كل شهر","مره كل سته اشهر","مره كل سنه"]
        
        for drag in dragsNamesContent{
            let action = UIAlertAction(title: drag, style: .default) { (action: UIAlertAction) in
                self.times.setTitle(drag, for: .normal)
            }
            dragsTimes.addAction(action)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        dragsTimes.addAction(cancelAction)
    }
    
    
    
    func showTimes(){
        
        let dragsNamesContent = ["يوميه"]
        
//        for drag in dragsNamesContent{
//            let action = UIAlertAction(title: drag, style: .default) { (action: UIAlertAction) in
//                self.timePickerButton.setTitle(drag, for: .normal)
//            }
//            timesPickers.addAction(action)
//        }
        
        
          //assign delegate and datasoursce to its view controller
//          timePicker.delegate = self
//          timePicker.dataSource = self
          // setting properties of the pickerView
          
          timePicker.backgroundColor = .white
        timePicker.tintColor = .red
        
//        timePicker.addTarget(self, action: #selector(self.dateChanged), for: .valueChanged)

          // add pickerView to the view
          
        
        
        
        let margin:CGFloat = 10.0
        let rect = CGRect(x: margin, y: margin, width: timesPickers.view.bounds.size.width - margin * 4.0, height: 220)
        let customView = UIView(frame: rect)

        customView.backgroundColor = .green
        timesPickers.view.addSubview(customView)
        
        timePicker.frame.size = customView.frame.size
        customView.addSubview(timePicker)
//        timePicker.frame = customView.frame
//        customView.addSubview(timePicker)
        
        
//        timePicker.frame = timesPickers.view.frame
//        timesPickers.view.addSubview(timePicker)
        
        let cancelAction = UIAlertAction(title: "الغاء", style: .cancel, handler: nil)
        timesPickers.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "تحديد", style: .default, handler: { (action: UIAlertAction) in
            print("value is \(self.timePicker.date)")
            let dateValue = self.dateChanged(date: self.timePicker.date)
            self.timePickerButton.setTitle("\(dateValue)", for: .normal)
            
            
        })
        timesPickers.addAction(okAction)
    }


    func dateChanged(date:Date)->String {
        let dateFormatr = DateFormatter()
        dateFormatr.dateFormat = "dd MMMM, h:mm a"
        let strDate = dateFormatr.string(from: (date))
        print(strDate)
        return strDate
    }
    
    
    @IBAction func addLocaleNotiification(_ sender: Any) {
        drageName = esmElDwarButton.titleLabel!.text!
        drageSechdualType = times.titleLabel!.text!
        selectedDate = timePickerButton.titleLabel!.text!
        
        validateSelectedValues()
        
    }
    
    
    func validateSelectedValues(){
        
        
        
        localNotification()
        
        
//        if drageName == "الرجاء اختيار اسم الدواء من القائمه"{
//            showErrorMessage(for: "Drag Name")
//            return
//        }
//        
//        if drageSechdualType == "الرجاء اختيار فئه الجرعه من القائمه"{
//            showErrorMessage(for: "Time For Drag")
//            return
//        }
//        
//        if selectedDate == "ميعاد اخر جرعه" {
//            showErrorMessage(for: "Last Drag Time")
//            return
//        }
//        
//        
//         self.showAlert(withTitle: "Succeed", message: "Notification Setted", actionTitle: "Ok", action: {})
        
    }
    
    private func showErrorMessage(for inputName:String){
        self.showAlert(withTitle: "Wrong \(inputName)", message: "Please select \(inputName) from menu", actionTitle: "Try Again", action: {})
    }
    
}








import UserNotifications
struct localNotification{
    let notificationCenter = UNUserNotificationCenter.current()
    let options: UNAuthorizationOptions = [.alert, .sound, .badge]
    
    init() {
        notificationCenter.requestAuthorization(options: options) {
            (didAllow, error) in
            if !didAllow {
                print("User has declined notifications")
            }
        }
    }
    
    
}


