//
//  Reader.swift
//  Apple Notepad
//
//  Created by Luca Salmi on 2022-01-27.
//

import Foundation

class Reader{
    
    var notesArray: [String] = []
    
    func checkIfEmpty(input : String?) -> Bool{
        
        if(input != nil){
            notesArray.append(input!)
            print(notesArray)
            return true
        }else {
            return false
        }
    }
    
    func goString() -> String{
        var x = ""
        for i in notesArray {
            
           x = x + " " + i + " "
        }
        
        return x
    }
    
}
