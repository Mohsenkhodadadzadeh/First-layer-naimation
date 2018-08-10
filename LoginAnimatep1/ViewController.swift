//
//  ViewController.swift
//  LoginAnimatep1
//
//  Created by mohsen khodadadzadeh on 8/10/18.
//  Copyright © 2018 mohsen khodadadzadeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginButt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        headerLabel.center.x = self.view.bounds.width / 2
        username.center.x = self.view.bounds.width / 2
        password.center.x = self.view.bounds.width / 2
        loginButt.center.x = self.view.bounds.width / 2
        
        loginButt.layer.cornerRadius = 8.0
        loginButt.layer.masksToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        // header label animate
        UIView.animate(withDuration: 0.5) {
            
            self.headerLabel.center.x += self.view.bounds.width
        }
        
        // username text field animate
        UIView.animate(withDuration: 0.5, delay: 0.7, options: [],
                       animations: {
                        self.username.center.x += self.view.bounds.width
        },
                       completion: nil
        )
        
        
        // password text field animate
        UIView.animate(withDuration: 0.5, delay: 0.9, options: [],
                       animations: {
                        self.password.center.x += self.view.bounds.width
        },
                       completion: nil
        )
        
        //password text filed with repeat animate
        /*
        UIView.animate(withDuration: 0.5, delay: 0.4,
                       options: .repeat,
                       animations: {
                        self.password.center.x += self.view.bounds.width
        },
                       completion: nil
        )
        */
        // password test field with couple animate
        /*
        UIView.animate(withDuration: 0.5, delay: 0.4,
                       options: [.repeat, .autoreverse],
                       animations: {
                        self.password.center.x += self.view.bounds.width
        },
                       completion: nil
        )
        */
        
        
        
        // password text field animate with curveEaseOut
        /*
        UIView.animate(withDuration: 0.5, delay: 0.4,
                       
                       options: [.repeat, .autoreverse, .curveEaseOut],
                       animations: {
                        self.password.center.x += self.view.bounds.width
        },
                       completion: nil
        )
        */
    }
    override func viewWillAppear(_ animated: Bool) {
        headerLabel.center.x  -= view.bounds.width
        username.center.x -= view.bounds.width
        password.center.x -= view.bounds.width
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

