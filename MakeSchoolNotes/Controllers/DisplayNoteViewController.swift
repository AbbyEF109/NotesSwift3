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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "Cancel" {
                print("Cancel button tapped")
            }
            else if identifier == "Save" {
                print("Save button tapped")
                
                let note = Note()
                note.title = noteTitleTextField.text ?? ""
                note.content = noteContentTextView.text
                note.modificationTime = Date()
                
                let listNotesTableViewController = segue.destination as! ListNotesTableViewController
                
                listNotesTableViewController.notes.append(note)
                
                }
            }
        }
    
    @IBOutlet var noteContentTextView: UITextView!
    
    @IBOutlet var noteTitleTextField: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        noteTitleTextField.text = ""
        noteContentTextView.text = ""
        
        }
    
    }
