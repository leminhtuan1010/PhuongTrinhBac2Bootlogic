//
//  GiaiPhuongTrinhBac2.swift
//  SwiftAppSkeleton
//
//  Created by Minh Tuan on 5/18/17.
//  Copyright © 2017 Techmaster. All rights reserved.
//

import UIKit

class GiaiPhuongTrinhBac2: UIViewController {

    @IBOutlet weak var txt_so1: UITextField!
    
    @IBOutlet weak var txt_so2: UITextField!
    
    @IBOutlet weak var txt_so3: UITextField!
    
    @IBOutlet weak var lbl_kq1: UILabel!
    
    @IBOutlet weak var lbl_kq2: UILabel!
    
    var nhap : tinhtoan!
    var duraketqua : tinhtoan!
    var a : Double!
    var b : Double!
    var c : Double!
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
   
    func nhapdauvao() {
        
        a = Double(txt_so1.text!)
        b = Double(txt_so2.text!)
        c = Double(txt_so3.text!)
        if (a == nil || b == nil || c == nil){
            lbl_kq1.text = String("ham khong nhan chu")
        }else{
            
            duaraketqua()
        }
    }
    func duaraketqua() {
        duraketqua = tinhtoan()
        do {
            let (x1, x2) = try duraketqua.phuongTrinhBac2(a: a, b: b, c: c)
            lbl_kq1.text = String(x1)
            lbl_kq2.text = String(x2)
        }catch PhuongTrinhBac2Error.voNghiem{
            lbl_kq1.text = String("phuong trinh vo nghiem")
        }catch PhuongTrinhBac2Error.aBangKhong {
            lbl_kq1.text = ("a = 0.0 phuong trinh tuyen tinh")
            lbl_kq2.text = ("a = 0.0 phuong trinh tuyen tinh")
        }catch {
            lbl_kq1.text = String("khong ro loi")
        }
    }
    func resset()  {
        lbl_kq1.text = ""
        lbl_kq2.text = ""
        txt_so1.text = ""
        txt_so2.text = ""
        txt_so3.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

    @IBAction func acc_ketqua(_ sender: Any) {
        if (count == 0){
        nhapdauvao()
            count = 1
        }else if(count == 1){
            resset()
            count = 0
        }
    }


}
