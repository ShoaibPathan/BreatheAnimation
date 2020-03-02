//
//  ContentView.swift
//  BreatheAnimation
//
//  Created by Mogens Egeskov-Madsen on 3/2/20.
//  Copyright © 2020 Mogens Egeskov-Madsen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var offsetInt: CGFloat = 40
    @State var animate = false

    var body: some View {
        ZStack {
            Rectangle()
            .fill(Color.black)
                .edgesIgnoringSafeArea(.all)
            ZStack {
                BreatheCircle()
                        .scaleEffect(self.animate ? 1 : 0.2)
                        .offset(x: self.animate ? -offsetInt / 2 : 0, y: self.animate ? offsetInt : 0)
                BreatheCircle()
                .scaleEffect(self.animate ? 1 : 0.2)
                .offset(x: self.animate ? -offsetInt / 2 : 0, y: self.animate ? -offsetInt : 0)
                BreatheCircle()
                .scaleEffect(self.animate ? 1 : 0.2)
                .offset(x: self.animate ? offsetInt / 2 : 0, y: self.animate ? offsetInt : 0)
                BreatheCircle()
                .scaleEffect(self.animate ? 1 : 0.2)
                .offset(x: self.animate ? offsetInt / 2 : 0, y: self.animate ? -offsetInt : 0)
                BreatheCircle()
                .scaleEffect(self.animate ? 1 : 0.2)
                .offset(x: self.animate ? offsetInt : 0, y: self.animate ? 0 : 0)
                BreatheCircle()
                .scaleEffect(self.animate ? 1 : 0.2)
                .offset(x: self.animate ? -offsetInt : 0, y: self.animate ? 0 : 0)

            }
            .rotationEffect(Angle(degrees: self.animate ? 90 : 0))
            .opacity(0.7)
            .animation(Animation.easeOut(duration: 2.0).repeatForever(autoreverses: true))
            .onAppear {
                self.animate = true
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
