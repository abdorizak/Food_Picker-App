//
//  ViewController.swift
//  Food Picker
//
//  Created by Abdirizak Hassan on 8/26/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var food: UILabel!
    @IBOutlet var btnchoos: UIButton!
    @IBOutlet var labelchoos: UILabel!
    
    var myFoodTypes:[String] = ["canjeero iyo suqaar✨","canjeero iyo beer😎", "Bariis iyo Malay🔥", "Bariis iyo Hilib😇", "Baasto iyo Malay🥰", "Baasto iyo Hilib😎"]
    var currentFood = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(choosFoodnow())
    }
    
   @objc func choosFoodnow(){
        if currentFood < myFoodTypes.count {
            food.text = myFoodTypes[currentFood]
            currentFood += 1
            labelchoos.text = "Choos Food Again...!"
        } else {
            currentFood = 0
            labelchoos.text = "Lest's Go and Choos a Food you want to eat🔥"
            food.text = "Waiting You to choos..!"
            btnchoos.setTitle("choos agian", for: .normal)
            showAlert(title: "try again🤤", message: "choos your Best Food..✌️")
        }
    }
    
    func showAlert(title: String, message:String){
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
        present(ac, animated: true, completion: nil)
    }

    @IBAction func choosFood(_ sender: Any) {
        choosFoodnow()
    }
    
}
