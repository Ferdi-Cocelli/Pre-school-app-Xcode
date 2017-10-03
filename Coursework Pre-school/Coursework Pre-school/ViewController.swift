//
//  ViewController.swift
//  Coursework Pre-school
//
//  Created by Ferdi Cocelli on 02/03/2017.
//  Copyright © 2017 Ferdi Cocelli. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var audioPlayer:AVAudioPlayer!
    

    @IBOutlet weak var answer: UILabel!
    var Value = 0;
    var intA = 0;
    var intB = 0;
    var intsecondA = 0;
    var intfirstB = 0;
    var i = 0;
    
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var correctView: UIView!
    
    @IBOutlet weak var labelC: UILabel!
    @IBOutlet weak var labelD: UILabel!
    @IBOutlet weak var labelA: UILabel!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelE: UILabel!
    @IBOutlet weak var starA: UIImageView!
    @IBOutlet weak var starB: UIImageView!
    @IBOutlet weak var starC: UIImageView!
    @IBOutlet weak var starD: UIImageView!
    @IBOutlet weak var starE: UIImageView!
    @IBOutlet weak var sun: UIImageView!
    @IBOutlet weak var sun2: UIImageView!

    @IBOutlet weak var plus: UILabel!
    @IBOutlet weak var equals: UILabel!

    

    @IBAction func one(_ sender: UIButton) {
        Value = 1
        answer.text = String(Value)
         check()
        
    }
    
    @IBAction func two(_ sender: UIButton) {
        Value = 2
        answer.text = String(Value)
         check()
    }
    
    @IBAction func three(_ sender: UIButton) {
        Value = 3
        answer.text = String(Value)
         check()
    }
    
    @IBAction func four(_ sender: UIButton) {
        Value = 4
        answer.text = String(Value)
         check()
    }
    
    @IBAction func five(_ sender: UIButton) {
        Value = 5
        answer.text = String(Value)
         check()
    }
    
    @IBAction func six(_ sender: UIButton) {
        Value = 6
        answer.text = String(Value)
         check()
    }
    
    @IBAction func seven(_ sender: UIButton) {
        Value = 7
        answer.text = String(Value)
         check()
    }
    
    @IBAction func eight(_ sender: UIButton) {
        Value = 8
        answer.text = String(Value)
         check()
    }
    
    @IBAction func nine(_ sender: UIButton) {
        Value = 9
        answer.text = String(Value)
         check()
    }
    
    @IBAction func zero(_ sender: UIButton) {
        Value = 0
        answer.text = String(Value)
         check()
    }
    
    func check(){
        if (intA + intB == Value){
            print("Success")
            correctView.isHidden = false
            labelC.text = String(intA)
            labelD.text = String(intB)
            labelE.text = String (Value)
            
            answer.textColor = UIColor.green
            labelA.textColor = UIColor.green
            labelB.textColor = UIColor.green
            plus.textColor = UIColor.green
            labelC.textColor = UIColor.green
            labelD.textColor = UIColor.green
            equals.textColor = UIColor.green
            labelE.textColor = UIColor.green
            
            rightSound()
            animation()
           // i = 0
           // display.text = String(i)
   
        }
        else{
            //wrongSound()
                //incrementCounter()
            print("Failed")
            answer.text = "?"
             //sunAnimation()
            animationforQuestion()

        }
    }
    
    //func incrementCounter(){
       // i = i + 1
        //display.text = String(i)
  //  }
    
    func rightSound(){
       // sunAnimation()
        let audioFilePath = Bundle.main.url(forResource: "rightSound", withExtension: "mp3")!
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioFilePath)
            guard (audioPlayer) != nil else {return}
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
     
        } catch let error as NSError {
            print(error.description)
        }
        
        
    }
    
    //func wrongSound(){
      //  let audioFilePath = Bundle.main.url(forResource: "wrongSound", withExtension: "mp3")!
        
        //do {
          //  audioPlayer = try AVAudioPlayer(contentsOf: audioFilePath)
            
            //guard (audioPlayer) != nil else {return}
            
            
            //audioPlayer.prepareToPlay()
            //audioPlayer.play()
            
          
            
        //}
        
        //catch let error as NSError {
          //  print(error.description)
            
        //}
    //}
    
    
    func questionSong(){
        
      //  sunAnimation()
        let audioFilePath = Bundle.main.url(forResource: "happy", withExtension: "mp3")!
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioFilePath)
            guard (audioPlayer) != nil else {return}
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        } catch let error as NSError {
            print(error.description)
        }
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
     //   sunAnimation()
        animation()

    }
    func animation(){
        self.starA.alpha = 0.3
        self.starB.alpha = 0.3
        self.starC.alpha = 0.3
        self.starD.alpha = 0.3
        self.starE.alpha = 0.3
        //
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.starE.transform = CGAffineTransform(rotationAngle: 360)
            
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.sun.transform = CGAffineTransform(rotationAngle: 360)
            
            
            UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.sun2.transform = CGAffineTransform(rotationAngle: 360)
                
            }, completion: nil)
            

            }, completion: nil)
            
        }, completion: nil)
//print(self.starE.transform)

       // self.starE.transform = NSStringFromCGAffineTransform(360)
        
        
    
        
        
        UIView.animate(withDuration: 0.5, delay: 0.2,options: [.repeat, .autoreverse], animations: {
            self.starA.alpha = 1;
            self.starB.alpha = 1;
            self.starC.alpha = 1;
            self.starD.alpha = 1;
            self.starE.alpha = 1;
        }, completion: nil)
}

    func animationforQuestion(){
        answer.alpha = 0
        labelA.alpha = 0
        labelB.alpha = 0
        plus.alpha = 0
        labelC.alpha = 0
        labelD.alpha = 0
        equals.alpha = 0
        labelE.alpha = 0
        
        
        
        answer.textColor = UIColor.red
        labelA.textColor = UIColor.red
        labelB.textColor = UIColor.red
        plus.textColor = UIColor.red
        labelC.textColor = UIColor.red
        labelD.textColor = UIColor.red
        equals.textColor = UIColor.red
        labelE.textColor = UIColor.red
        
        
        UIView.animate(withDuration: 0.3, delay:0.2, options: .curveEaseOut,
                       animations: {self.answer.alpha = 1;
                        self.labelA.alpha = 1; self.labelB.alpha = 1; self.plus.alpha = 1; self.labelC.alpha = 1; self.labelD.alpha = 1; self.labelE.alpha = 1; self.equals.alpha = 1;}, completion : nil)
    }
    
   // func sunAnimation(){
       // UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse], animations: {
          //  self.sun.transform = CGAffineTransform(rotationAngle: 360)
     //   }, completion: nil)
  //  }
    
    
    func random(){
        intA =  Int(arc4random_uniform(5))
        intB = Int(arc4random_uniform(5))
        labelA.text = String(intA)
        labelB.text = String(intB)

    }
    
    


    override func viewDidLoad() {
        

        
        super.viewDidLoad()
        random()
        questionSong()

    //    callsecondView()
        correctView.isHidden = true
      //  sunAnimation()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

