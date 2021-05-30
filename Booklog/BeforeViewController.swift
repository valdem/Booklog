//
//  BeforeTableViewController.swift
//  Booklog
//
//  Created by Вадим on 24.05.2021.
//

import UIKit

class BeforeTableViewController: UITableViewController {

    @IBAction func cancelToBefore(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func saveReadBookDetails(segue: UIStoryboardSegue) {
        if let readBookDeatilsViewController = segue.source as? ReadBookDetailsViewController {
            booksBe.append(readBookDeatilsViewController.book)
            
            
            let indexPath = IndexPath(row: booksBe.count-1, section: 0)
            tableView.insertRows(at: [indexPath], with: .automatic)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return booksBe.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookBeCell", for: indexPath)

        as! UITableViewCell
        
        let book = booksBe[indexPath.row] as Book
        
        if let titleLabel = cell.viewWithTag(200) as? UILabel {
            titleLabel.text = book.title
        }
        if let authorLabel = cell.viewWithTag(201) as? UILabel {
            authorLabel.text = book.author
        }
        if let ratingImageView = cell.viewWithTag(202) as? UIImageView {
            ratingImageView.image = self.imageForRating(rating: book.rating)
        }

        return cell
    }
    

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
    func imageForRating(rating:Int) -> UIImage? {
        switch rating {
        case 1:
            return UIImage(named: "One.PNG")
        case 2:
            return UIImage(named: "Two.PNG")
        case 3:
            return UIImage(named: "Three.PNG")
        case 4:
            return UIImage(named: "Four.PNG")
        case 5:
            return UIImage(named: "Five.PNG")
        case 6:
            return UIImage(named: "Six.PNG")
        case 7:
            return UIImage(named: "Seven.PNG")
        case 8:
            return UIImage(named: "Eight.PNG")
        case 9:
            return UIImage(named: "Nine.PNG")
        case 10:
            return UIImage(named: "Ten.PNG")
        default:
            return nil
        }
    }
}

var booksBe: [Book] = booksBeforeData
