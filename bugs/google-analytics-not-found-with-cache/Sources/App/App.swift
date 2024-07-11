import SwiftUI
import DynamicFramework

@main
struct TestApp: App {
    var dynamicFramework = DynamicFramework()
    
    var body: some Scene {
        WindowGroup {
            Text("Test")
        }
    }
}
