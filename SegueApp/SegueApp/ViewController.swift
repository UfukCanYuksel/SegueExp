//
//  ViewController.swift
//  SegueApp
//
//  Created by ufuk can yüksel on 23.05.2023.
//

import UIKit

class ViewController: UIViewController {
    var userAge = "0"

    @IBOutlet weak var firstField: UITextField!
    @IBOutlet weak var firstLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goViewController(_ sender: Any) {
        userAge = firstField.text ?? "0"
        
        
        // ViewController'lar arası geçiş için kullanılır.
        // önce main de viewController eklenir daha sonra file->newFile->uiViewCont
        // daha sonra main deki viewCont 'un show the identity inspector özelliği ile bir-
        // birlerine bağlanması sağlanır.
        // ilk VC'in üstteki Sarıdan control'e basılı tutulup 2. VC ye Show edilir
        // kod olarak bağlamak için performSegue
        
        performSegue(withIdentifier: "goSecond", sender:nil)
    
    }
    // ViewCont'lar arası veri aktarımı için kullanılır
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // birden çok veri aktarımı olabileceği için hangisi olduğunu kontrol ediyorum
        if segue.identifier == "goSecond"{
            
            // gidilecek VC'yi değişken olarak alabiliyorum ve
            // secondVC'nin değişken ve metodlarına ulaşabiliyorum
            let secondVC = segue.destination as! SecondViewController
            secondVC.myAge = userAge
        }
    }
    
    
}

