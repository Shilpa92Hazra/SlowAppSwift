

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBAction func long_btn(_ sender: Any) {
//
       
      let queue = DispatchQueue(label : "ca.shilpa")
    queue.async{
        self.long_proc();
        }
        
        
        
    }
    
    
    func long_proc(){
        
        
        
        Thread.sleep(forTimeInterval:5);
        
        
                    DispatchQueue.main.async {
                        
            
                self.lbl.text = "Number is \( arc4random())";
        
            }
        
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

