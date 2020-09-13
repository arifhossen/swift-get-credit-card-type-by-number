
import UIKit
import CCValidator

class ViewController: UIViewController {
    

    @IBOutlet weak var cardNumberOutlet: UITextField!
    @IBOutlet weak var cardTypeOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func checkTypeBtnClick(_ sender: Any) {
        
        let card_number = self.cardNumberOutlet.text!
        let card_type = self.getTypeByNumber(card_number: card_number)
        
        self.cardTypeOutlet.text = card_type
        
    }
    
    func getTypeByNumber(card_number:String)->String
       {
           
          var result:String = ""

           let getCardType = CCValidator.typeCheckingPrefixOnly(creditCardNumber: card_number)

           if getCardType == .Visa{
               result = "Visa"
           }
           else if getCardType == .AmericanExpress{
               result = "American Express"
           }
           else if getCardType == .MasterCard{
               result = "MasterCard"
           }
           else if getCardType == .Discover{
               result = "Discover"
           }
           else if getCardType == .JCB{
               result = "JCB"
           }
           else if getCardType == .DinersClub{
               result = "Diners"
           }
           else if getCardType == .UnionPay{
               result = "UnionPay"
           }
           else if getCardType == .Dankort{
               result = "Dankort"
           }
           else
           {
               result = "Unknown"
           }
           
           return result
           
       }
    
}

