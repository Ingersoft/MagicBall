//
//  ViewController.swift
//  MagicBall
//
//  Created by Inger Montenegro on 4/14/18.
//  Copyright © 2018 Inger Montenegro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var puntero1 : Int = 0
   let Arraybola = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var bola: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func MagicBall()
    {
        puntero1 = Int(arc4random_uniform(5))
        bola.image = UIImage(named: Arraybola[puntero1])
    }
    
    
    @IBAction func boton(_ sender: UIButton) {
        
//        puntero1 = Int(arc4random_uniform(5))
//        bola.image = UIImage(named: Arraybola[puntero1])
        MagicBall()
        
    }
    
    // Shake or motion with phone
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        puntero1 = Int(arc4random_uniform(5))
        bola.image = UIImage(named: Arraybola[puntero1])
    }

}

