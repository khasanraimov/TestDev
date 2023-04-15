import UIKit

class AuthViewController: UIViewController {

    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    
    @IBOutlet weak var loginSegmentView: UIView!
    
    @IBOutlet weak var registerSegmentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AuthViewController")
        self.navigationController?.pushViewController(vc, animated: false)
        
        self.view.bringSubviewToFront(loginSegmentView)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.bringSubviewToFront(loginSegmentView)
        case 1:
            self.view.bringSubviewToFront(registerSegmentView)
        default:
            break
        }
        
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
