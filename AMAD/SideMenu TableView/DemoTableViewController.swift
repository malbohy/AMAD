//
//  DemoTableViewController.swift
//  AMAD
//
//  Created by mohamed albohy on 3/21/20.
//  Copyright © 2020 AMAD. All rights reserved.
//

import UIKit
import ExpandableTableViewController

class DemoTableViewController: ExpandableTableViewController, ExpandableTableViewDelegate {
    
    var screenContent:[MenuItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.expandableTableView.expandableDelegate = self
        
        screenContent = SideMenuContent().getContent()
        
//        self.expandableTableView.backgroundView?.applyGradient(colours: [UIColor(hexString: "fcab2c"),UIColor(hexString: "e67d00")])

        self.expandableTableView.backgroundColor = UIColor(hexString: "fcab2c")
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, numberOfRowsInSection section: Int) -> Int {
        return screenContent.count
    }
    
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        print("will display cell")
//        if screenContent[indexPath.row].menuSubItems.count > 0{
//            cell.contentView.viewWithTag(3)?.hide()
//            print("no submenus")
//        }
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, cellForRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> UITableViewCell {
        let cell = expandableTableView.dequeueReusableCellWithIdentifier("head", forIndexPath: expandableIndexPath) as! MenuHeaderTableViewCell
        cell.configureCell(with: screenContent[expandableIndexPath.row])
//        (cell.contentView.viewWithTag(1) as! UILabel).text = screenContent[expandableIndexPath.row].menuTitle
//        if screenContent[expandableIndexPath.row].menuSubItems.count > 0{
//            cell.contentView.viewWithTag(3)?.hide()
//            print("no submenus")
//        }
        
//        print(screenContent[expandableIndexPath.row].menuTitle)
//        print(screenContent[expandableIndexPath.row].menuSubItems.count)
        cell.backgroundColor = .clear
        return cell
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, heightForRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> CGFloat {
        return 80.5
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, estimatedHeightForRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> CGFloat {
        return 40.5
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, didSelectRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) {
        
//        print("general row pressed")
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, numberOfSubRowsInRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> Int {
        return screenContent[expandableIndexPath.row].menuSubItems.count
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, subCellForRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> UITableViewCell {
        let cell = expandableTableView.dequeueReusableCellWithIdentifier("body", forIndexPath: expandableIndexPath) 

        (cell.contentView.viewWithTag(2) as! UILabel).text = screenContent[expandableIndexPath.row].menuSubItems[expandableIndexPath.subRow]
        
        
        
        cell.backgroundColor = .clear
        return cell
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, heightForSubRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> CGFloat {
        return 50.5
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, estimatedHeightForSubRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) -> CGFloat {
        return 60.5
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, didSelectSubRowAtExpandableIndexPath expandableIndexPath: ExpandableIndexPath) {
        
//        print("sub row pressed")
    }
    



    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



