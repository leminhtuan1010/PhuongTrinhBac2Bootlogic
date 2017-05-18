//
//  PhuongTrinhBac2.swift
//  SwiftAppSkeleton
//
//  Created by cuong on 5/16/17.
//  Copyright © 2017 Techmaster. All rights reserved.
//

import UIKit
class nhap: UIViewController {
    
    @IBOutlet weak var txt_so1: UITextField!
    
    @IBOutlet weak var txt_so2: UITextField!
    
    
    @IBOutlet weak var txt_so3: UITextField!
    var nhap : tinhtoan!
    var a : Double!
    var b : Double!
    var c : Double!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
    }
   
    func dauvao() {
        a = Double(txt_so1.text!)!
        b = Double(txt_so2.text!)!
        c = Double(txt_so3.text!)!
    }

    @IBAction func acc_ketqua(_ sender: Any) {
        dauvao()
    }
}
