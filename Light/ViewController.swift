//
//  ViewController.swift
//  Light
//
//  Created by Prakash Sachania on 10/3/17.
//  Copyright © 2017 Prakash Sachania. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //This line added and should be removed
    
    let possibleMoves = [[-1, -1,  2,  5],
                         [-1,  1,  3,  6],
                         [-1,  2,  4,  7],
                         [-1,  3, -1,  8],
                         [ 1, -1,  6,  9],
                         [ 2,  5,  7, 10],
                         [ 3,  6,  8, 11],
                         [ 4,  7, -1, 12],
                         [ 5, -1, 10, 13],
                         [ 6,  9, 11, 14],
                         [ 7, 10, 12, 15],
                         [ 8, 11, -1, 16],
                         [ 9, -1, 14, -1],
                         [10, 13, 15, -1],
                         [11, 14, 16, -1],
                         [12, 15, -1, -1]]

    var lightOn = true;
    var blankButton : UIButton?
    var buttons : [Int] = [1]
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if canMove(buttonPosition: sender.tag) {
        }
    }
    
    func moveButton(_ fromButton: UIButton, _ toButton: UIButton) {
        //set title, border, background of toButton
        //clear title, border, background of fromButton
    }
    
    func canMove(buttonPosition : Int) -> Bool {
        //Do check

        // ...
        // ...
        
        if (buttons[3]  == -1 ||
            buttons[6]  == -1 ||
            buttons[8]  == -1 ||
            buttons[11] == -1) {
            return true
        } else {
            return false
        }
    }
    
    @IBAction func pressedButton(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

