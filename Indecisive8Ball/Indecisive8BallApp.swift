//
//  Indecisive8BallApp.swift
//  Indecisive8Ball
//
//  Created by dmu mac 25 on 23/02/2023.
//

import SwiftUI

@main
struct Indecisive8BallApp: App {
    
    @StateObject private var iVM = IndecisiveViewModel()
    
    var body: some Scene {
        WindowGroup{
            IndecisiveView().environmentObject(iVM)
        }
    }
}
