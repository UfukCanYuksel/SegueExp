//
//  SecondViewController.swift
//  SegueApp
//
//  Created by ufuk can yüksel on 23.05.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var goLabel: UILabel!
    @IBOutlet weak var secondViewCont: UILabel!
    var myAge = "0"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goLabel.text = "\(myAge)" 

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
