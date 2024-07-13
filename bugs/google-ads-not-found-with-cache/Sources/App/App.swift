import SwiftUI
import DynamicFramework

@main
struct TestApp: App {
    var df = DynamicFramework()
    
    var body: some Scene {
        WindowGroup {
            Text("Test")
            Text("\(df.description)")
        }
    }
}
