//
//  ViewController.swift
//  Localization
//
//  Created by RLogixxTraining on 19/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var seg: UISegmentedControl!
    @IBOutlet weak var lblGood: UILabel!
    @IBOutlet weak var lbl_hwllo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_seg(_ sender: UISegmentedControl) {
        if seg.selectedSegmentIndex == 0 {
            lblGood.text = "hello".localizableString(loc: "en")
            lbl_hwllo.text = "good".localizableString(loc: "en")
        }else{
            lblGood.text = "hello".localizableString(loc: "hi")
            lbl_hwllo.text = "good".localizableString(loc: "hi")
        }
        
    }
}
extension String{
    func localizableString(loc: String) -> String {
           guard let path = Bundle.main.path(forResource: loc, ofType: "lproj"),
                 let bundle = Bundle(path: path) else {
               return self
           }
           return NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
       }
   }
    


