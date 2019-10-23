//
//  ViewController.swift
//  vocabRecitation
//
//  Created by CIeas.Chen on 10/23/19.
//  Copyright © 2019 CIeas Chen. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    let data = VocabData();
    
    let square = UIView(frame: CGRect(x : 0, y : 170, width : 20, height : 50 ));
    
    var startingPoint : Int = 0;
    
    
    
    @IBOutlet weak var vocabulary: UILabel!
    @IBOutlet weak var meaning: UILabel!
    @IBOutlet weak var darkOrlight: UILabel!
    @IBOutlet weak var triangle: UIImageView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        square.backgroundColor = UIColor.orange;
        self.view.addSubview(square);
        vocabulary.textColor = UIColor.white;
        meaning.textColor = UIColor.white;
        vocabulary.text = data.vocabArray[startingPoint].vocabulary;
        meaning.text = data.vocabArray[startingPoint].meaning;
        darkOrlight.textColor = UIColor.darkGray;
    }
    
    
    @IBAction func changer(_ sender: AnyObject) {
        
        if (sender.tag == 1 && startingPoint < data.vocabArray.endIndex - 1)  {
            
            startingPoint += 1;
            vocab_label_change();
            
        }
        else {
            
            let alert = UIAlertController(title: "Congratulations!", message: "You finish the plan designated by Cieas.", preferredStyle: .alert);
            
            let startAgain = UIAlertAction(title: "Review", style: .default, handler:  {
                (UIAlertAction) in
                self.timeToStartAgain()
            })
            
            alert.addAction(startAgain);
            
            present(alert, animated: true, completion: nil);
            
        }
        
    }
    
    
    @IBAction func themeChange(_ sender: UISwitch) {
        if sender.isOn {
            vocabulary.textColor = UIColor.cyan;
            meaning.textColor = UIColor.cyan;
            square.backgroundColor = UIColor.yellow;
            darkOrlight.textColor = UIColor.purple;
            triangle.tintColor = UIColor.white;
        }
        else{
            vocabulary.textColor = UIColor.white;
            meaning.textColor = UIColor.white;
            square.backgroundColor = UIColor.green;
            darkOrlight.textColor = UIColor.darkGray;
            triangle.tintColor = UIColor.brown;
        }
    }
    
    func vocab_label_change() {
        vocabulary.text = data.vocabArray[startingPoint].vocabulary;
        meaning.text = data.vocabArray[startingPoint].meaning;
    }
    
    func timeToStartAgain() {
        
        startingPoint = 0;
        vocabulary.text = data.vocabArray[startingPoint].vocabulary;
        meaning.text = data.vocabArray[startingPoint].meaning;
        
    }
    
}

