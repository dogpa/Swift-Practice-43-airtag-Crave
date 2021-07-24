//
//  craveViewController.swift
//  Swift Practice # 43 airtag Crave
//
//  Created by CHEN PEIHAO on 2021/7/24.
//

import UIKit

class craveViewController: UIViewController {

    //airtag上面的label
    @IBOutlet weak var underAirTagLabel: UILabel!
    
    //下方顯示字數的label
    @IBOutlet weak var wordCountLabel: UILabel!
    
    //輸入內容的textfield
    @IBOutlet weak var wordInputTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startToCrave(_ sender: UITextField) {
        //airtag上的字為textfield輸入的文字
        underAirTagLabel.text = sender.text
        
        //word指派內容為輸入的textfield的「字數」的「字串類型」
        let word = String(wordInputTextField.text!.count)
        
        //將剛剛取得的字串類型word 轉型成為 int
        let wordCount = Int(word)
        //用剛剛的worCount的int格式去判斷字數的多寡
        //決定wordcountLabel顯示的內容與字體顏色
        //大於四顯示超過字限字體紅色，未超過字體黑色顯示輸入字數
        if wordCount! > 4 {
            wordCountLabel.text = "你輸入的字數超過上限"
            wordCountLabel.textColor = UIColor.red
        }else{
            wordCountLabel.text = "字數：\(word)"
            wordCountLabel.textColor = UIColor.black
        }
        
    }
    //textfield輸入後點選螢幕任一位置收鍵盤
    @IBAction func tapToCloseKeyBoard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
