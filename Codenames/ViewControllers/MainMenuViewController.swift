import UIKit

class MainMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onCreateGame(sender: AnyObject) {
        performSegueWithIdentifier("create-game", sender: self)
    }

    @IBAction func onJoinGame(sender: AnyObject) {
        performSegueWithIdentifier("join-game", sender: self)
    }
}
