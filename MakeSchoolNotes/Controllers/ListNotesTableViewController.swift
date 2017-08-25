//
//  ListNotesTableViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class ListNotesTableViewController: UITableViewController {
    
    var notes = [Note]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // 1
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
            "listNotesTableViewCell", for: indexPath) as! ListNotesTableViewCell
        
        let row = indexPath.row
        
        let note = notes[row]
        
        cell.noteTitleLabel.text = note.title
        
        cell.noteModificationTimeLabel.text = note.modificationTime.convertToString()
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //1
        if let identifier = segue.identifier {
            //2
            if identifier == "displayNote" {
                //3
                print("Table view cell tapped")
                
                
                // 1
                let indexPath = tableView.indexPathForSelectedRow!
                // 2
                let note = notes[indexPath.row]
                // 3
                let displayNoteViewController = segue.destination as! DisplayNoteViewController
                // 4
                displayNoteViewController.note = note
            }

            else if identifier == "addNote" {
                    print("+ button tapped")
                }
            }
        }
    
    @IBAction func unwindToListNotesViewController(_ segue: UIStoryboardSegue) {
        //for now, simply defining hte method is sufficient.
        //we'll add code later
    }

}
