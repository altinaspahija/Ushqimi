//
//  ViewController.swift
//  Ushqimet
//
//  Created by Student on 10/27/17.
//  Copyright © 2017 Ardit BIbaj. All rights reserved.
//

import UIKit
import AVFoundation
import UIView_Shake

class ViewController: UIViewController {

    @IBOutlet weak var fotoja: UIImageView!
    @IBOutlet weak var ushqimi: UILabel!
    @IBOutlet weak var sugjerimi: UILabel!
    var listaEUshqimeve = [Ushqimi]()
    let randomUshqim:Int! = nil
    var audioplayer: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        listaEUshqimeve = Menu().Ushqimet
    }
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake { luaj()
            view.shake(10, withDelta: 5) {
                println("done")
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sugjero(_ sender: Any) {
        luaj()
    }
    
    func luaj()
    {
        let randomUshqim:Int = Int(arc4random_uniform(UInt32(listaEUshqimeve.count)))
        ushqimi.text = listaEUshqimeve[randomUshqim].emri
        sugjerimi.text = listaEUshqimeve[randomUshqim].pershkrimi
        fotoja.image = UIImage(named:listaEUshqimeve[randomUshqim].fotoja)
        let fajlli = Bundle.main.url(forResource:"baked", withExtension: "wav")
        audioplayer = try! AVAudioPlayer (contentsOf: fajlli!)
        audioplayer.play()
    }
    
    @IBAction func nerregull(_ sender: UIButton) {
        let alertcontroller = UIAlertController(title:"Ne rregull", message:"Ushqimi juaj i preferuar eshte \(listaEUshqimeve[randomUshqim].emri) dhe qmimi i saj eshte \(listaEUshqimeve[randomUshqim].cmimi) dhe gjindet ne restaurantin \(listaEUshqimeve[randomUshqim].kugjindet)", preferredStyle: UIAlertControllerStyle.actionSheet)
        let alertaction_ = UIAlertAction(title:"Ne rregull", style: UIAlertActionStyle.default, handler:nil)
        alertcontroller.addAction(alertaction_)
        present(alertcontroller, animated: true, completion: nil)
    }
    
}

