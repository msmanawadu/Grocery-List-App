//
//  ViewController.swift
//  Grocery List App
//
//  Created by Sandeepa Manawadu on 2020/09/22.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var groceryTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.becomeFirstResponder()
        
        groceryTextView.delegate = self
    }

    @IBAction func addItem(_ sender: Any) {
        
        if let text = textField.text, text != "" {
            groceryTextView.text.append("\(text)\n")
            
            textField.text = ""
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
}

