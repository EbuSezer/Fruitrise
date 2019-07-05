//
//  ViewController.swift
//  Fruitrise
//
//  Created by Ebubekir on 5.07.2019.
//  Copyright © 2019 Ebubekir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fruit_box_image: UIImageView!
    @IBOutlet weak var fruit_title: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    var randomNumber : Int = 0
    
    class Fruits{
        let fruit_name : String
        let fruit_image : String
        init(name:String,image:String) {
            fruit_name = name
            fruit_image = image
        }
        
    }
    
    class AllFruit{
        var fruit_list = [Fruits]()
        
        init() {
            fruit_list.append(Fruits(name: "Apricot", image: "apricot"))
            fruit_list.append(Fruits(name: "Watermelon", image: "watermelon"))
            fruit_list.append(Fruits(name: "Orange", image: "orange"))
            fruit_list.append(Fruits(name: "Cherry", image: "cherries"))
            fruit_list.append(Fruits(name: "Strawberry", image: "strawberry"))
            fruit_list.append(Fruits(name: "Melon", image: "melon"))
            fruit_list.append(Fruits(name: "Grape", image: "grapes"))
            fruit_list.append(Fruits(name: "Banana", image: "banana"))
            fruit_list.append(Fruits(name: "Apple", image: "apple"))
            fruit_list.append(Fruits(name: "Plum", image: "plum"))
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateFruit()
        myButton.setTitle("Roll", for: .normal)
    }

    @IBAction func buttonClicked(_ sender: Any) {
        myButton.setTitle("Roll", for: .normal)
        updateFruit()
    }
    func updateFruit(){
        randomNumber = Int.random(in: 0...9)
        fruit_box_image.image = UIImage(named: AllFruit().fruit_list[randomNumber].fruit_image)
        fruit_title.text = AllFruit().fruit_list[randomNumber].fruit_name    }
    
}

