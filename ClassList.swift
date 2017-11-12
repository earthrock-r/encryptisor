//
//  ClassList.swift
//  Encryptisor
//
//  Created by Ranjith R Dixit on 30/10/17.
//  Copyright © 2017 Earthrock. All rights reserved.
//

import Foundation
import UIKit

extension String {
    public func index(of char: Character) -> Int? {
        if let idx = characters.index(of: char) {
            return characters.distance(from: startIndex, to: idx)
        }
        return nil
    }
}
class script {
    var positionInArray = Int()
    var values = [String]()
    var abc = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var ABC = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var name = String()
    init(_ name: String) {
        self.name = name
    }
    init(_ name: String, _ values: [String]) {
        self.name = name
        self.values = values
    }
    var scrr = String()
}
class subs {
    var s = String()
    init(){}
}
var scripts = [script]()
var scrid = Int()
var tableIsFirst = false
var con_scr = script("ScriptName")
var otherscript = script("Script Two", ["b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a"])
var buttonTag = 0
/*
 scripts.append(script("Keycode"))
 scripts[0].values = ["21", "35", "33", "23", "13", "24", "25", "26", "18", "27", "28", "29", "37", "36", "19", "10", "11", "14", "22", "15", "17", "34", "12", "32", "16", "31"]
*/
func convert(_ toc: [String], _ scr: script, _ outt: subs){
    var stra = [String]()
//    var out = String()
    for to in toc {
        if to == scr.abc[0] || to == scr.ABC[0] {
            stra.append(scr.values[0])
        }
        if to == scr.abc[1] || to == scr.ABC[1] {
            stra.append(scr.values[1])
        }
        if to == scr.abc[2] || to == scr.ABC[2] {
            stra.append(scr.values[2])
        }
        if to == scr.abc[3] || to == scr.ABC[3] {
            stra.append(scr.values[3])
        }
        if to == scr.abc[4] || to == scr.ABC[4] {
            stra.append(scr.values[4])
        }
        if to == scr.abc[5] || to == scr.ABC[5] {
            stra.append(scr.values[5])
        }
        if to == scr.abc[6] || to == scr.ABC[6] {
            stra.append(scr.values[6])
        }
        if to == scr.abc[7] || to == scr.ABC[7] {
            stra.append(scr.values[7])
        }
        if to == scr.abc[8] || to == scr.ABC[8] {
            stra.append(scr.values[8])
        }
        if to == scr.abc[9] || to == scr.ABC[9] {
            stra.append(scr.values[9])
        }
        if to == scr.abc[10] || to == scr.ABC[10] {
            stra.append(scr.values[10])
        }
        if to == scr.abc[11] || to == scr.ABC[11] {
            stra.append(scr.values[11])
        }
        if to == scr.abc[12] || to == scr.ABC[12] {
            stra.append(scr.values[12])
        }
        if to == scr.abc[13] || to == scr.ABC[13] {
            stra.append(scr.values[13])
        }
        if to == scr.abc[14] || to == scr.ABC[14] {
            stra.append(scr.values[14])
        }
        if to == scr.abc[15] || to == scr.ABC[15] {
            stra.append(scr.values[15])
        }
        if to == scr.abc[16] || to == scr.ABC[16] {
            stra.append(scr.values[16])
        }
        if to == scr.abc[17] || to == scr.ABC[17] {
            stra.append(scr.values[17])
        }
        if to == scr.abc[18] || to == scr.ABC[18] {
            stra.append(scr.values[18])
        }
        if to == scr.abc[19] || to == scr.ABC[19] {
            stra.append(scr.values[19])
        }
        if to == scr.abc[20] || to == scr.ABC[20] {
            stra.append(scr.values[20])
        }
        if to == scr.abc[21] || to == scr.ABC[21] {
            stra.append(scr.values[21])
        }
        if to == scr.abc[22] || to == scr.ABC[22] {
            stra.append(scr.values[22])
        }
        if to == scr.abc[23] || to == scr.ABC[23] {
            stra.append(scr.values[23])
        }
        if to == scr.abc[24] || to == scr.ABC[24] {
            stra.append(scr.values[24])
        }
        if to == scr.abc[25] || to == scr.ABC[25] {
            stra.append(scr.values[25])
        }
        if to == " " {
            stra.append(" ")
        }
        if to == "0" {
            stra.append("0")
        }
        if to == "1" {
            stra.append("1")
        }
        if to == "2" {
            stra.append("2")
        }
        if to == "3" {
            stra.append("3")
        }
        if to == "4" {
            stra.append("4")
        }
        if to == "5" {
            stra.append("5")
        }
        if to == "6" {
            stra.append("6")
        }
        if to == "7" {
            stra.append("7")
        }
        if to == "8" {
            stra.append("8")
        }
        if to == "9" {
            stra.append("9")
        }
    }
//    out = String(describing: stra)
//

    for o in stra {
        outt.s += String(describing:o)
        if o == "." {
            outt.s += "."
        } else {
            outt.s += "-"
        }
    }
    print(outt.s)
}
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
