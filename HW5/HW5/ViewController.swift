//
//  ViewController.swift
//  HW5
//
//  Created by Irmak Zenger on 4/22/22.
//
// INPUT REQUIREMENTS:
// - Integer
// - non negative
// - multiple operators can NOT be consecutively entered (e.g. 5 + * 7)
// - do not edit input after pressing Enter


import UIKit

class ViewController: UIViewController {
    
    var current_result : Double = 0.0
    
    // when the user inputs a number for the first time, current_result
    // will be updated as that first input
    // this is a special case so it needs it's own boolean indicator
    var first : Bool = true
    
    var toplama : Bool = false
    var cikartma : Bool = false
    var carpma : Bool = false
    var bolme : Bool = false
    
    
    @IBOutlet weak var outputScreen: UILabel!

    @IBOutlet weak var inputField: UITextField!
    
    // shows the user the last number they entered
    @IBOutlet weak var historyView: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func enterTikla(_ sender: Any) {
       
        if let input_num = Double(inputField.text!){
            if first{
                first = false
                current_result = input_num
            }else{
                if toplama{
                    current_result = current_result + input_num
                }else if cikartma{
                    current_result = current_result - input_num
                }else if carpma{
                    current_result = current_result * input_num
                }else if bolme{
                    current_result = current_result / input_num
                }
            }
        }else{
            print("Invalid Input")
            inputField.text = ""
            return
        }
        
        historyView.text = "..."
        inputField.text = String(current_result)
        outputScreen.text = String(current_result)
        toplama = false
        cikartma = false
        carpma = false
        bolme = false
    }
    
    
    
    @IBAction func resetTikla(_ sender: Any) {
        outputScreen.text = "0.0"
        toplama = false
        cikartma = false
        carpma = false
        bolme = false
        current_result = 0.0
        first = true
        inputField.text = ""
        historyView.text = "..."
    }
    
    
    // if an operator button is clicked while there is still a calculation to be done (e.g. 5 x 7  --> + <-- ) complete the previous calculation
    // then update the current [operation] and wait for the next number from user
    
    @IBAction func toplamaTikla(_ sender: Any) {
        if let input_num = Double(inputField.text!){
            if first{
                first = false
                current_result = input_num
            }else{
                if toplama{
                    current_result = current_result + input_num
                }else if cikartma{
                    current_result = current_result - input_num
                }else if carpma{
                    current_result = current_result * input_num
                }else if bolme{
                    current_result = current_result / input_num
                }
            }
            historyView.text = String(input_num)
            outputScreen.text = String(current_result)
        }else{
            print("Invalid Input")
            inputField.text = ""
            return
        }
        
        inputField.text = ""
        
        toplama = true
        cikartma = false
        carpma = false
        bolme = false
        
    }
    
    
    @IBAction func cikartmaTikla(_ sender: Any) {
        if let input_num = Double(inputField.text!){
            if first{
                first = false
                current_result = input_num
            }else{
                if toplama{
                    current_result = current_result + input_num
                }else if cikartma{
                    current_result = current_result - input_num
                }else if carpma{
                    current_result = current_result * input_num
                }else if bolme{
                    current_result = current_result / input_num
                }
            }
            historyView.text = String(input_num)
            outputScreen.text = String(current_result)
        }else{
            print("Invalid Input")
            inputField.text = ""
            return
        }
        
        inputField.text = ""
        
        toplama = false
        cikartma = true
        carpma = false
        bolme = false
    }
    
    
    
    @IBAction func carpmaTikla(_ sender: Any) {
        if let input_num = Double(inputField.text!){
            if first{
                first = false
                current_result = input_num
            }else{
                if toplama{
                    current_result = current_result + input_num
                }else if cikartma{
                    current_result = current_result - input_num
                }else if carpma{
                    current_result = current_result * input_num
                }else if bolme{
                    current_result = current_result / input_num
                }
            }
            historyView.text = String(input_num)
            outputScreen.text = String(current_result)
        }else{
            print("Invalid Input")
            inputField.text = ""
            return
        }
        
        inputField.text = ""
       
        toplama = false
        cikartma = false
        carpma = true
        bolme = false
        
    }
    
    
    @IBAction func bolmeTikla(_ sender: Any) {
        if let input_num = Double(inputField.text!){
            if first{
                first = false
                current_result = input_num
            }else{
                if toplama{
                    current_result = current_result + input_num
                }else if cikartma{
                    current_result = current_result - input_num
                }else if carpma{
                    current_result = current_result * input_num
                }else if bolme{
                    current_result = current_result / input_num
                }
            }
            historyView.text = String(input_num)
            outputScreen.text = String(current_result)
        }else{
            print("Invalid Input")
            inputField.text = ""
            return
        }
        
        inputField.text = ""
        
        toplama = false
        cikartma = false
        carpma = false
        bolme = true
    }
    
    

}

