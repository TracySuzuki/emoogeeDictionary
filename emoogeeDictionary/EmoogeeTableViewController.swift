//
//  EmoogeeTableViewController.swift
//  emoogeeDictionary
//
//  Created by student15 on 3/19/19.
//  Copyright © 2019 student15. All rights reserved.
//

import UIKit

class EmoogeeTableViewController: UITableViewController {
    
    var emoogees: [Emoogee] = [
        Emoogee(symbol: "😀", name: "Grinning Face",description: "A typical smiley face.", usage: "happiness"),
        Emoogee(symbol: "😕", name: "Confused Face",description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
        Emoogee(symbol: "😍", name: "Heart Eyes",description: "A smiley face with hearts for eyes.",usage: "love of something; attractive"),
        Emoogee(symbol: "👮", name: "Police Officer",description: "A police officer wearing a blue cap with a gold badge.", usage: "person of authority"),
        Emoogee(symbol: "🐢", name: "Turtle", description: "A cute turtle.", usage: "Something slow"),
        Emoogee(symbol: "🐘", name: "Elephant", description: "A gray elephant.", usage: "good memory"),
        Emoogee(symbol: "🍝", name: "Spaghetti", description: "A plate of spaghetti.", usage: "spaghetti"),
        Emoogee(symbol: "🎲", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
        Emoogee(symbol: "⛺️", name: "Tent", description: "A small tent.", usage: "camping"),
        Emoogee(symbol: "📚", name: "Stack of Books", description: "Three colored books stacked on each other.", usage: "homework, studying"),
        Emoogee(symbol: "💔", name: "Broken Heart",description: "A red, broken heart.", usage: "extreme sadness"),
        Emoogee(symbol: "💤", name: "Snore",description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
        Emoogee(symbol: "🏁", name: "Checkered Flag", description: "A black-and-white checkered flag.", usage:"completion")]
    //an array of emoogees
    
    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
            }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return emoogees.count
        } else {
            return 0
           //tells the tableView how many rows in each section
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "EmoogeeCell", for: indexPath)
        //TableView deques a cell, the following line will return with an emoogee identifier
    
        let emoogees = self.emoogees[indexPath.row] //gets the right object to display on the cell
        cell.textLabel?.text = "\(emoogees.symbol) - \(emoogees.name)"
        cell.detailTextLabel?.text = emoogees.description
        //the above updates the cells labels and merges the emogee and name on a single line
        
        cell.showsReorderControl = true
        //tableViews provide a way for users to control the order of cells. 
        
        return cell
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoogee = emoogees[indexPath.row]
        print("\(emoogee.symbol) \(indexPath)")
        //method prints the emoogee symbol and index path of the row tappped
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let moveEmoogee = emoogees.remove(at: fromIndexPath.row)
        emoogees.insert(moveEmoogee, at: to.row)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
        
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
    let tableViewEditingMode = tableView.isEditing
        tableView.setEditing(!tableViewEditingMode, animated: true)
}







//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
////let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: IndexPath)
//
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
//
//    /*
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//        // Configure the cell...
//
//        return cell
//    }
//    */
//
//    /*
//    // Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//    */
//
//    /*
//    // Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            // Delete the row from the data source
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }
//    }
//    */
//
//    /*
//    // Override to support rearranging the table view.
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//
//    }
//    */
//
//    /*
//    // Override to support conditional rearranging of the table view.
//    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the item to be re-orderable.
//        return true
//    }
//    */
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
}
