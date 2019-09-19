import SwiftUI
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)

        if #available(iOS 13.0, *) {
            let view = ContentView()
            window!.rootViewController = UIHostingController(rootView: view)
        }
        else {
            let board = UIStoryboard(name: "ContentView", bundle: nil)
            window!.rootViewController = board.instantiateInitialViewController()
        }

        window!.makeKeyAndVisible()

        return true
    }
}
