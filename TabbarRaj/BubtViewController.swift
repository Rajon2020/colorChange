

import UIKit

class BubtViewController: UIViewController {

    
    
    
    
    @IBOutlet weak var ColorChange: UISegmentedControl!
    
    
    @IBAction func ColorChangeButtonPressed(_ sender: Any) {
        switch ColorChange.selectedSegmentIndex
           {
           case 0:
            
             UserDefaults.standard.set("black", forKey: "Key")
          navigationController?.navigationBar.barTintColor = UIColor.black
            
            
            
           case 1:
             UserDefaults.standard.set("green", forKey: "Key")
           navigationController?.navigationBar.barTintColor = UIColor.green

          
           default:
               break
           }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
       

        // Do any additional setup after loading the view.
    }
    
   
   
}
