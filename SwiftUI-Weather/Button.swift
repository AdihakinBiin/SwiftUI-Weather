//
//  Button.swift
//  SwiftUI-Weather
//
//  Created by Abdihakin Elmi on 12/19/20.
//

import SwiftUI

struct WeatherButton: View {
    var buttonTitle: String
    var buttonForeGround: Color
    var buttonBacground: Color
    var body: some View {
        Text(buttonTitle)
            .frame(width: 280, height: 50)
            .foregroundColor(buttonForeGround)
            .background(buttonBacground)
            .font(.system(size: 24, weight: .medium, design: .default))
            .cornerRadius(10)
    }
}

