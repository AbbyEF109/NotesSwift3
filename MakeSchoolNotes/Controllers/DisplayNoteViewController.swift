//
//  DisplayNoteViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class DisplayNoteViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var note: Note?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let listNotesTableViewController = segue.destination as! ListNotesTableViewController
        if segue.identifier == "Save" {
            if let note = note {
                note.title = noteTitleTextField.text ?? ""
                note.content = noteContentTextView.text ?? ""
                listNotesTableViewController.tableView.reloadData()
            }
                
            else {
                let newNote = Note()
                newNote.title = noteTitleTextField.text ?? ""
                newNote.content = noteContentTextView.text ?? ""
                newNote.modificationTime = Date()
                listNotesTableViewController.notes.append(newNote)
                }
            }
        }
    
    @IBOutlet var noteContentTextView: UITextView!
    
    @IBOutlet var noteTitleTextField: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let note = note {
            noteTitleTextField.text = note.title
            noteContentTextView.text = note.content
        }
        
        else {

        noteTitleTextField.text = ""
        noteContentTextView.text = ""
        
        }
    
    }
}
