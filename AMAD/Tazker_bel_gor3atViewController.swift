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
    @IBOutlet weak var addNewNotificationContainer: UIStackView!
    @IBOutlet weak var previousNotificationsContainer: UIStackView!
    
    
    
    let dragsNames = UIAlertController(title: "اسم الدواء", message: "", preferredStyle: UIAlertController.Style.actionSheet)
    let dragsTimes = UIAlertController(title: "فئه الجرعه", message: "", preferredStyle: UIAlertController.Style.actionSheet)
    let timesPickers = UIAlertController(title: "\n\n\n\n\n\n\n\n\n\n", message: "", preferredStyle: UIAlertController.Style.actionSheet)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        esmAlDwa2Menu()
        dragTimes()
        showTimes()
        
        loadLocalNotifications()
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    private func loadLocalNotifications(){
        
        self.previousNotificationsContainer.subviews.forEach({$0.removeFromSuperview()})
        
        let dragsNotifications =  UserDefaults.standard.array(forKey: "Drags")
        
        addNewNotificationContainer.isHidden = false
        previousNotificationsContainer.isHidden = true
        if let _ = dragsNotifications {
            addNewNotificationContainer.isHidden = true
            previousNotificationsContainer.isHidden = false
            print(dragsNotifications!)
            dragsNotifications!.map { (value) in
                let label = UILabel()
                label.text = "You Have Reminder For : \(value as! String)"
                print(value)
                self.previousNotificationsContainer.addArrangedSubview(label)
            }
            
            
            let button = UIButton()
            button.setTitle("اضافه الدواء جديد", for: .normal)
            button.backgroundColor = UIColor.orange
            button.rx.tap.subscribe(onNext: { (_) in
                self.addNewNotificationContainer.isHidden = false
                self.previousNotificationsContainer.isHidden = true
            })
            self.previousNotificationsContainer.addArrangedSubview(button)
        }
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
        if drageName == "الرجاء اختيار اسم الدواء من القائمه"{
            showErrorMessage(for: "Drag Name")
            return
        }
        
        if drageSechdualType == "الرجاء اختيار فئه الجرعه من القائمه"{
            showErrorMessage(for: "Time For Drag")
            return
        }
        
        if selectedDate == "ميعاد اخر جرعه" {
            showErrorMessage(for: "Last Drag Time")
            return
        }
        
        let timeForNextNotification = self.timePicker.date
        var timeIntervalForNotifications:TimeInterval = 0
        switch drageSechdualType {
        case "مره كل سنه":
            timeIntervalForNotifications = getTimeIntervals(numberOfDays: 365, lastTime: timeForNextNotification)
            break
        case "مره كل سته اشهر":
            timeIntervalForNotifications = getTimeIntervals(numberOfDays: 180, lastTime: timeForNextNotification)
            break
        case "مره كل شهر":
            timeIntervalForNotifications = getTimeIntervals(numberOfDays: 30, lastTime: timeForNextNotification)
            break
        case "اسبوعيه":
            timeIntervalForNotifications = getTimeIntervals(numberOfDays: 7, lastTime: timeForNextNotification)
            break
            
        case "يوميه":
            timeIntervalForNotifications = getTimeIntervals(numberOfDays: 1, lastTime: timeForNextNotification)
            break
        default:
            
            break
        }
        
        print("time interval before change : \(timeIntervalForNotifications)")
        localNotification(withNotificationName: "it is time for your medicine : \(drageName)", time: timeIntervalForNotifications, notificationID: drageName)
        
        
        let dragsNotifications =  UserDefaults.standard.array(forKey: "Drags")
        if let _ =  dragsNotifications{
            if dragsNotifications!.count > 0{
                var newDrags = dragsNotifications!
                newDrags.append(drageName)
                UserDefaults.standard.setValue(newDrags, forKeyPath: "Drags")
            }else{
                UserDefaults.standard.setValue([self.drageName], forKeyPath: "Drags")
            }
        }else{
            UserDefaults.standard.setValue([self.drageName], forKeyPath: "Drags")
        }
        
        
        
        
        self.showAlert(withTitle: "Succeed", message: "Notification Setted", actionTitle: "Ok", action: {
//            self.addNewNotificationContainer.isHidden = true
//            self.previousNotificationsContainer.isHidden = false
            self.loadLocalNotifications()
            return ""
        })
        
        
        
    }
    
    private func getTimeIntervals(numberOfDays:Int, lastTime:Date)->TimeInterval{
        var timeIntervalForNotifications:TimeInterval = 0
        var dayComponent    = DateComponents()
        dayComponent.day    = numberOfDays // For removing one day (yesterday): -1
        let theCalendar     = Calendar.current
        let nextDate        = theCalendar.date(byAdding: dayComponent, to: lastTime)
        print(nextDate)
        
        if lastTime < Date() {
            timeIntervalForNotifications = nextDate!.timeIntervalSince(Date())
            return timeIntervalForNotifications
        }else{
            timeIntervalForNotifications = nextDate!.timeIntervalSince(lastTime)
            return timeIntervalForNotifications
        }
        
        
    }
    
    private func showErrorMessage(for inputName:String){
        self.showAlert(withTitle: "Wrong \(inputName)", message: "Please select \(inputName) from menu", actionTitle: "Try Again", action: {})
    }
    
    @IBAction func addNewNotification(_ sender: Any) {
        self.addNewNotificationContainer.isHidden = false
        self.previousNotificationsContainer.isHidden = true
        
    }
    
    
    
}








import UserNotifications
struct localNotification{
    let notificationCenter = UNUserNotificationCenter.current()
    let options: UNAuthorizationOptions = [.alert, .sound, .badge]
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    let notificationName:String
    let notificationTime:TimeInterval
    init(withNotificationName:String, time:TimeInterval, notificationID:String) {
        self.notificationName = withNotificationName
        self.notificationTime = time
        getAcceccToNotifications(notificationID: notificationID)
    }
    
    
    private func getAcceccToNotifications(notificationID:String){
        //        notificationCenter.getNotificationSettings { (settings) in
        //          if settings.authorizationStatus != .authorized {
        //
        //          }
        //        }
        notificationCenter.requestAuthorization(options: options) {
            (didAllow, error) in
            if !didAllow {
                print("user didn't allow notifications")
            }
        }
        
        
        
        notificationCenter.getNotificationSettings { (settings) in
            if settings.authorizationStatus == .authorized {
                self.scheduleNotification(notificationType: self.notificationName,notificationID: notificationID)
            }
        }
        
    }
    
    
    func scheduleNotification(notificationType: String, notificationID:String) {
        //        self.appDelegate?.scheduleNotification(notificationType: notificationType)
        let content = UNMutableNotificationContent()
        
        content.title = notificationType
        content.body = "Now Is The Time To Take Your Medicine : \(self.notificationName)"
        content.sound = UNNotificationSound.default
        content.badge = 0
        
        let date = Date(timeIntervalSinceNow: self.notificationTime)
        let triggerDate = Calendar.current.dateComponents([.year,.month,.day,.hour,.minute,.second,], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDate, repeats: true)
        
        let request = UNNotificationRequest(identifier: notificationID, content: content, trigger: trigger)
        notificationCenter.add(request, withCompletionHandler: nil)
        
        
        
    }
    
    
    
    
}


//extension AppDelegate: UNUserNotificationCenterDelegate {
//
//}
