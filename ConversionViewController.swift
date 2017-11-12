//
//  ConversionViewController.swift
//  Encryptisor
//
//  Created by Ranjith R Dixit on 31/10/17.
//  Copyright © 2017 Earthrock. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {

    @IBOutlet weak var conv_text: UITextField!
    @IBOutlet weak var converted: UILabel!
    //var cscripts = [script]()
    //let tvc = ScriptsVC()
    
    var scriptc = script("script")
    var convertiontext = String()
    var scr_con_id = Int()
    
    @IBAction func convertbutton(_ sender: Any) {
        //cscripts = tvc.scripts
        //let intt = scrid
        print(conv_text.text ?? "No Text Available")
        convertiontext = conv_text.text ?? ""
        let toccone = Array(convertiontext)
        var tocc = [String]()
        let subss = subs()
        for toccon in toccone {
            tocc.append(String(toccon))
        }
        convert(tocc, scriptc, subss)
        converted.text = subss.s
        print(subss.s)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.hideKeyboardWhenTappedAround()
    }

    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
