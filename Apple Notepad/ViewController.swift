//
//  ViewController.swift
//  Apple Notepad
//
//  Created by Luca Salmi on 2022-01-27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var clearBtn: UIButton!
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var showText: UILabel!
    var inputedText = "You Notes"
    let myReader = Reader()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showText.text = inputedText
        
    }
    
    @IBAction func saveClickAction(_ sender: Any) {
        
        if myReader.checkIfEmpty(input: textInput.text!){
            
            inputedText = textInput.text!
            showIt()
            textInput.text = ""
            
        }else{
            
            return
        }
        
    }
    
    @IBAction func clearClickAction(_ sender: Any) {
        textInput.text = ""

    }
    
    func showIt(){
        showText.text = myReader.goString()
    }
    
}

