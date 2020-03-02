//
//  BreatheCircle.swift
//  BreatheAnimation
//
//  Created by Mogens Egeskov-Madsen on 3/2/20.
//  Copyright © 2020 Mogens Egeskov-Madsen. All rights reserved.
//

import SwiftUI

struct BreatheCircle: View {
    var body: some View {
        Circle()
        .fill(
            LinearGradient(gradient:
                Gradient(colors: [Color(UIColor.systemTeal), Color(UIColor.systemGreen)]),
                           startPoint: .bottomLeading, endPoint: .topTrailing)
        )
            .frame(width: 100, height: 100)
    }
}

struct BreatheCircle_Previews: PreviewProvider {
    static var previews: some View {
        BreatheCircle()
    }
}
