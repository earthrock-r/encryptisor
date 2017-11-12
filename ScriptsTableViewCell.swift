//
//  ScriptsTableViewCell.swift
//  Encryptisor
//
//  Created by Ranjith R Dixit on 30/10/17.
//  Copyright © 2017 Earthrock. All rights reserved.
//

import UIKit

//protocol CustomTableViewCellDelegate {
//    func buttonPressed()
//}

class ScriptsTableViewCell: UITableViewCell {
    
    @IBOutlet var scriptName: UIButton!
//    var delegate: CustomTableViewCellDelegate?

//    @IBAction func scriptName(_ sender: Any) {
//        if (self.delegate != nil) {
////            self.delegate?.buttonPressed()
//            self.delegate?.buttonPressed()
//        }
//    }
    
    var scriptname = String()
    var cellscript = script("Keycode")
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        if scriptName.isTouchInside == true {
//            scriptname = scriptName.titleLabel?.text ?? "None"
//            let convertvc = ConversionViewController()
//            convertvc.scriptc = cellscript
//        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
