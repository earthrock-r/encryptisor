//
//  NewScriptVCEncryptisor
//
//  Created by Ranjith R Dixit on 28/10/17.
//  Copyright © 2017 Earthrock. All rights reserved.
//

import UIKit

class NewScriptVC: UIViewController {
    
    @IBOutlet weak var T_A: UITextField!
    @IBOutlet weak var T_B: UITextField!
    @IBOutlet weak var T_C: UITextField!
    @IBOutlet weak var T_D: UITextField!
    @IBOutlet weak var T_E: UITextField!
    @IBOutlet weak var T_F: UITextField!
    @IBOutlet weak var T_G: UITextField!
    @IBOutlet weak var T_H: UITextField!
    @IBOutlet weak var T_I: UITextField!
    @IBOutlet weak var T_J: UITextField!
    @IBOutlet weak var T_K: UITextField!
    @IBOutlet weak var T_L: UITextField!
    @IBOutlet weak var T_M: UITextField!
    @IBOutlet weak var T_N: UITextField!
    @IBOutlet weak var T_O: UITextField!
    @IBOutlet weak var T_P: UITextField!
    @IBOutlet weak var T_Q: UITextField!
    @IBOutlet weak var T_R: UITextField!
    @IBOutlet weak var T_S: UITextField!
    @IBOutlet weak var T_T: UITextField!
    @IBOutlet weak var T_U: UITextField!
    @IBOutlet weak var T_V: UITextField!
    @IBOutlet weak var T_W: UITextField!
    @IBOutlet weak var T_X: UITextField!
    @IBOutlet weak var T_Y: UITextField!
    @IBOutlet weak var T_Z: UITextField!
    
    @IBOutlet weak var name_script: UITextField!
    
    var newscript = script("Untitled")
    var newvaluess = [UITextField]()
    var newvalues = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardWhenTappedAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let myvc = segue.destination as! ScriptsVC
        newvaluess = [T_A, T_B, T_C, T_D, T_E, T_F, T_G, T_H, T_I, T_J, T_K, T_L, T_M, T_N, T_O, T_P, T_Q, T_R, T_S, T_T, T_U, T_V, T_W, T_X, T_Y, T_Z]
        for nnn in newvaluess {
            newscript.values.append(nnn.text ?? "")
        }
        newscript.name = name_script.text ?? "Untitled"
        print(newscript.name)
        print(newvaluess.count)
//        print(T_C.text ?? "None")
        newscript.positionInArray = (scripts.count)
        scripts.append(newscript)
    }
    
}

