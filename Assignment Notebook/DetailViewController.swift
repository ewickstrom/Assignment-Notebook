//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Ella Wickstrom on 1/16/20.
//  Copyright © 2020 Ella Wickstrom. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    var detailItem: Assignments? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    func configureView() {
       // Update the user interface for the detail item
       if let assignment = self.detailItem {
          if titleTextField != nil {
             titleTextField.text = assignment.title
             subjectTextField.text = assignment.subject
             dueDateTextField.text = assignment.dueDate
            descriptionTextField.text = assignment.description
          }
       }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
           assignment.title = titleTextField.text!
           assignment.subject = subjectTextField.text!
            assignment.dueDate = dueDateTextField.text!
            assignment.description = descriptionTextField.text!
        }
    }

}

