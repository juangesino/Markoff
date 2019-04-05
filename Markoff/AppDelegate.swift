import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        PreferencesController().registerDefaults()
    }
    
    @IBAction func contactSupport(_ sender: AnyObject) {
        SupportController().contactSupport()
    }
}
