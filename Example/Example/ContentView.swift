//
//  ContentView.swift
//  Example
//
//  Created by Takayuki Sei on 2020/09/01.
//  Copyright © 2020 Takayuki Sei. All rights reserved.
//

import SwiftUI
import Study_XCFramework

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                Hoge().dump()
            }) {
                Text("Hello xcframework")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
