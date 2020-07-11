//
//  ViewController.swift
//  01-iIamrich
//
//  Created by Romina Pozzuto on 31/05/2020.
//  Copyright © 2020 Romina Pozzuto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageViewDiamond: UIImageView!
    
    @IBOutlet weak var buttonPush: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressend(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "I am Rich", message: """
                                                                            I am Rich,
                                                                            I deserve it.
                                                                            I am good,
                                                                            healthy and successfull
                                                                            """, preferredStyle:  .actionSheet  )
        let action = UIAlertAction(title: "Ok", style: .destructive) { (action) in
            self.titleLabel.text = "He pulsado el botón"
            self.titleLabel.textColor = UIColor.blue
            self.titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
            self.imageViewDiamond.image = UIImage(named: "diamond")
            self.buttonPush.backgroundColor = UIColor.blue
            self.buttonPush.setTitle("Volver al inicio", for: .normal)
            self.view.backgroundColor = UIColor.white
        }
        alertController.addAction(action)
        let action2 = UIAlertAction(title: "Borrar", style: .destructive)  { (action) in
            self.titleLabel.text = "I`m Rich!"
            self.titleLabel.textColor = UIColor.red
            self.titleLabel.font = UIFont.systemFont(ofSize: 20)
            self.imageViewDiamond.image = UIImage(named: "ruby")
            self.buttonPush.setTitle("Una vez más", for: .normal)
            self.buttonPush.backgroundColor = UIColor.systemPink
            self.view.backgroundColor = UIColor.systemGray6
        }
        alertController.addAction(action2)
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alertController.addAction(action3)
        self.show(alertController, sender: nil)

    }
    
}

