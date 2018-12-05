//
//  ViewController.swift
//  hw02
//
//  Created by Apple on 2018/11/30.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

struct QNA{
    var question:String
    var answer:[String]
    var correct:String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var qnum: UILabel!
    @IBOutlet weak var quest: UILabel!
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var A: UIButton!
    @IBOutlet weak var B: UIButton!
    @IBOutlet weak var C: UIButton!
    @IBOutlet weak var D: UIButton!
    @IBOutlet weak var restart: UIButton!
    var number = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19]
    var correctAns = ""
    var questionnum = 0
    var mark = 0
    var questionArray =
        [
            QNA(question: "EXO中年紀最小的成員？", answer: ["世勳","燦烈","鍾仁","伯賢"], correct: "A"),
            QNA(question: "綜藝《無限挑戰》中，主持人劉在錫與EXO的合作歌曲為何?", answer: ["Monster","Dancing King","　MAMA","KOKOBOP"], correct: "B"),
            QNA(question: "EXO於哪首主打歌期間在音樂節目中獲得了第100個一位?", answer: ["Monster","Lotto","Call Me Baby","Power"], correct: "D"),
            QNA(question: "EXO第一個在YouTube的MV點閱次數破億？", answer: ["Growl","MAMA","Overdose","Wolf"], correct: "C"),
            QNA(question: "EXO歷年來的主打歌曲中第一個在韓國音樂節目獲得一位次數超過10次(含)以上的是哪個?", answer: ["Call Me Baby","Love Me Right","Lucky One","Lotto"], correct:"A"),
            QNA(question: "哪位成員所演唱的電視劇OST成為第一首在Youtube點閱次數破億的OST?", answer: ["世勳","燦烈","鍾大","秀敏"], correct:"B"),
            QNA(question: "以下哪位EXO成員不是EXO-CBX的成員?", answer: ["秀敏","伯賢","鍾大","世勳"], correct: "D"),
            QNA(question: "下列哪一首戲劇的OST其演唱者不是EXO成員？", answer: ["Stay With Me","Best Luck","Everytime","How about you"], correct:"D"),
            QNA(question: "EXO的哪首主打歌於M!Countdown獲得了改制後第一個滿分一位?", answer: ["Growl","POWER","Wolf","Overdose"], correct:"B"),
            QNA(question: "EXO憑藉什麼被記錄在2018金氏世界紀錄大全中?", answer: ["獲得最多音樂放送節目一位的藝人","達成最多張專輯百萬銷量的藝人","獲得最多大賞的藝人","平均長相最優秀的藝人"], correct:"C"),
            QNA(question: "EXO的粉絲名是什麼？", answer: ["EXO-L","EXO-Z","EXO-A","EXO-Q"], correct: "A"),
            QNA(question: "EXO應援色是什麼顏色？", answer: ["寶藍色","銀白色","紅色","湖水綠"], correct: "B"),
            QNA(question: "D.O.出演的第一部電視劇為何?", answer: ["沒關係，是愛情啊","步步驚心:麗","總理與我","CART"], correct:"A"),
            QNA(question: "世勳參與SM Station的歌名是什麼？", answer: ["Young&Free","Take You Home","My Hero","We Young"], correct: "D"),
            QNA(question: "下列哪個不是EXO成員？", answer: ["世勳","燦烈","敏錫","鹿晗"], correct: "D"),
            QNA(question: "EXO-CBX的第一首日文迷你專輯主打歌為何?", answer: ["Hey Mama!","The One","Girls","Ka-CHING!"], correct: "D"),
            QNA(question: "下列個哪個不是「正規後續改版專輯」的主打歌?", answer: ["Growl","Love Me Right","Lotto","For life"], correct: "D"),
            QNA(question: "以下哪個成員沒有出演音樂劇？", answer: ["SUHO","CHEN","世勳","伯賢"], correct: "C"),
            QNA(question: "在《朴軫永的Party People》中，成員沒有唱過哪一首歌?", answer: ["擁抱我","Boomerang","首爾的月亮","Sweet Lies"], correct: "D"),
            QNA(question: "世勳出演過下列哪一部電影？：", answer: ["孤獨REWIND","哥哥","純情","婚禮的那一天"], correct:"A")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var questionnum = 0
        var correctAns = 0
        var mark = 0
        Score.text = "分數："+String(mark)
        questionArray.shuffle()
        print("0")
        questionnum = questionnum + 1
        qnum.text = "Q" + String(questionnum+1)
        
    }
    
    @IBAction func A_select(_ sender: UIButton) {
        print("1")
        if correctAns == "A"
        {
            mark = mark + 10
            Score.text = "分數："+String(mark)
        }
        if questionnum == 10{
            let alertController = UIAlertController(
                title: "GameOver",
                message: "分數：\(mark)分",
                preferredStyle: .alert)
            let okAction = UIAlertAction(
                title: "確認", style: .default,
                handler:{
                    (action: UIAlertAction!) -> Void in
            })
            alertController.addAction(okAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            questionArray.shuffle()
            quest.text = questionArray[0].question
            A.setTitle(questionArray[0].answer[0], for: .normal)
            B.setTitle(questionArray[0].answer[0], for: .normal)
            C.setTitle(questionArray[0].answer[0], for: .normal)
            D.setTitle(questionArray[0].answer[0], for: .normal)
            print(questionArray[0].question)
            
        }

        }

    
@IBAction func B_select(_ sender: UIButton)  {
    if correctAns == "B"
    {
        mark = mark + 10
        Score.text = "分數："+String(mark)
    }
    if questionnum == 10{
        let alertController = UIAlertController(
            title: "GameOver",
            message: "分數：\(mark)分",
            preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "確認", style: .default,
            handler:{
                (action: UIAlertAction!) -> Void in
        })
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    else{
        questionArray.shuffle()
        questionArray[0]
    }
    
}

@IBAction func C_select(_ sender: UIButton)  {
    if correctAns == "C"
    {
        mark = mark + 10
        Score.text = "分數："+String(mark)
    }
    if questionnum == 10{
        let alertController = UIAlertController(
            title: "GameOver",
            message: "分數：\(mark)分",
            preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "確認", style: .default,
            handler:{
                (action: UIAlertAction!) -> Void in
        })
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    else{
        questionArray[0]
        questionArray.shuffle()
    }
    
}

@IBAction func D_select(_ sender: UIButton)  {
    if correctAns == "D"
    {
        mark = mark + 10
        Score.text = "分數："+String(mark)
    }
    if questionnum == 10{
        let alertController = UIAlertController(
            title: "GameOver",
            message: "分數：\(mark)分",
            preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "確認", style: .default,
            handler:{
                (action: UIAlertAction!) -> Void in
        })
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    else{
        questionArray.shuffle()
        
    }
    
}



    
}

