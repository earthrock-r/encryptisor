//
//  ScriptsVC.swift
//  Encryptisor
//
//  Created by Ranjith R Dixit on 30/10/17.
//  Copyright © 2017 Earthrock. All rights reserved.
//

import UIKit

class ScriptsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var scripttt = script("?")
    
    var list = [String]()

    @IBOutlet var scriptsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
        if tableIsFirst == false {
            scripts.append(script("Keycode"))
            scripts[0].values = ["21", "35", "33", "23", "13", "24", "25", "26", "18", "27", "28", "29", "37", "36", "19", "10", "11", "14", "22", "15", "17", "34", "12", "32", "16", "31"]
            scripts[0].positionInArray = 0
            scripts.append(otherscript)
        }
        tableIsFirst = true
        for scriptt in scripts {
            list.append(scriptt.name)
        }
    }

    override func didReceiveMemoryWarning() {

        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scripts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = scriptsTable.dequeueReusableCell(withIdentifier: "cellReuseID") as! ScriptsTableViewCell
//        var sciptid = Int()
        cell.scriptName.setTitle(list[indexPath.row], for: UIControlState.normal)
        cell.scriptName.setTitle(list[indexPath.row], for: UIControlState.application)
        cell.scriptName.setTitle(list[indexPath.row], for: UIControlState.disabled)
        cell.scriptName.setTitle(list[indexPath.row], for: UIControlState.focused)
        cell.scriptName.setTitle(list[indexPath.row], for: UIControlState.highlighted)
//        buttonTag += 1
        cell.scriptName.tag = indexPath.row
        cell.cellscript = scripts[indexPath.row]
//        cell.scriptName.addTarget(self, action: "showCVC", for: UIControlEvents.touchUpInside)
//        cell.scriptName.addTarget(self, action: #selector(self.scriptsTable(sender:)), for: .touchUpInside)
//        for scriipt in scripts {
//            cell.cellscript = scriipt/*
//            if cell.scriptName.isTouchInside == true {
//                //sciptid = scripts.index(of: scriipt)
//                scrid = sciptid
//                print(scrid)
//                print("You tapped a button.")
//                con_scr = scriipt
//            }*/
//        }
        return cell
    }

//    func showCVC() {
//        self.performSegue(withIdentifier: "converttosegue", sender: AnyObject.self)
//    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "converttosegue" {
            let vc = segue.destination as! ConversionViewController
//            let c = ScriptsTableViewCell()
            var tv_scr = script("Script")
//            if let sen = sender as? UIButton {
//                tv_scr = scripts[sen.tag]
//                vc.scriptc = tv_scr
//            }
            guard let tag = (sender as? UIButton)?.tag else { return } // Bail if we can't get a tag.
            vc.scriptc = scripts[tag]
//            vc.scriptc = c.cellscript
//            tv_scr = c.cellscript
//            con_scr = c.cellscript
//            print(c.cellscript.name)
            print("touched")
//            vc.scriptc = tv_scr
            print(vc.scriptc)
        }
        // Pass the selected object to the new view controller.
    }
}
//extension ScriptsVC : CustomTableViewCellDelegate {
//    func buttonPressed () {
//        self.performSegue(withIdentifier: "converttosegue", sender: UIButton())
//    }
//}

