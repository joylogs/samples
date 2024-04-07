//
//  EarthquakesApp.swift
//  Earthquakes
//
//  Created by Joy Banerjee on 07/04/24.
//

import SwiftUI

@main
struct EarthquakesApp: App {
    @StateObject var quakesProvider = QuakesProvider()
    
    var body: some Scene {
        WindowGroup {
//            Text("Test")
            
            Quakes()
//                .environmentObject(quakesProvider)
        }
    }
}

//struct EarthquakesApp_Previews: PreviewProvider {
//    static var previews: some View {
//        EarthquakesApp()
//    }
//}
