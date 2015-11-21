import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    private var sayingHello = true

    @IBAction func saySomething() {
        if sayingHello {
            button.setTitle("Say Goodbye")
            messageLabel.setText("Hello Wrist!")
            sayingHello = false
        } else {
            button.setTitle("Say Hello")
            messageLabel.setText("Bye Wrist!")
            sayingHello = true
        }
    }

    @IBOutlet var messageLabel: WKInterfaceLabel!
    @IBOutlet var button: WKInterfaceButton!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
