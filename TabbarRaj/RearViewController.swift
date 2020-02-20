

import UIKit

class RearViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var indexpathseg:Int?
    
    var item = ["Home","About","Settings","Social","Login"]
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RearTableViewCell
        cell.cellLabel.text = item[indexPath.row]
        
        return cell
       
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        indexpathseg = indexPath.row
        
        self.performSegue(withIdentifier: "tableabc", sender: self)
        
        
        
        
        
      
        
        
    }
 
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch indexpathseg {
        case 0:
             let displayVC = segue.destination as! UINavigationController
             let sliteVc =   displayVC.topViewController as! ViewController
             sliteVc.tvc = "HomeViewController"
            break
        case 1:
             let displayVC = segue.destination as! UINavigationController
                       
                       let sliteVc =   displayVC.topViewController as! ViewController
                       sliteVc.tvc = "ContactViewController"
            break
        case 2:
             let displayVC = segue.destination as! UINavigationController
                       
                       let sliteVc =   displayVC.topViewController as! ViewController
                       sliteVc.tvc = "BubtViewController"
            break
        case 3:
             let displayVC = segue.destination as! UINavigationController
                       
                       let sliteVc =   displayVC.topViewController as! ViewController
                       sliteVc.tvc = "BitViewController"
            break
            
        case 4:
         let displayVC = segue.destination as! UINavigationController
                   
                   let sliteVc =   displayVC.topViewController as! ViewController
                   sliteVc.tvc = "IctViewController"
        break
            
        default:
            break
        }
        
        
       
        
        
        

//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            if(segue.identifier == "tableabc"){
//                   let displayVC = segue.destination as! UINavigationController
//
//                let sliteVc =   displayVC.topViewController as! ViewController
//                sliteVc.tvc = "HomeViewController"
//
//
//
//            }
    }
    

    

}
