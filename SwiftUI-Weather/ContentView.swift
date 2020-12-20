//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Abdihakin Elmi on 12/19/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackGroundView(isNight: $isNight)
            VStack {
                MainTitle(title: "Cupertino, CA")
                
                MainWeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                
                HStack(spacing: 24) {
                    
                    WeatherdayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", tempreture: 76)
                    WeatherdayView(dayOfWeek: "WEB", imageName: "wind", tempreture: 46)
                    WeatherdayView(dayOfWeek: "THU", imageName: "sun.dust.fill", tempreture: 55)
                    WeatherdayView(dayOfWeek: "FRI", imageName: "snow", tempreture: 6)
                    WeatherdayView(dayOfWeek: "SAT", imageName: "sun.max.fill", tempreture: 69)
                }
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(buttonTitle: "Change Day Time", buttonForeGround: .blue, buttonBacground: .white)
                    
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}

struct MainWeatherView: View {
    var imageName: String
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("76°")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .medium, design: .default))
        }
        .padding(.bottom, 40)
    }
}
struct MainTitle: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}
struct BackGroundView: View {
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
    }
}
struct WeatherdayView: View {
    var dayOfWeek: String
    var imageName: String
    var tempreture: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .medium, design: .default))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(tempreture)°")
                .foregroundColor(.white)
                .font(.system(size: 28, weight: .medium, design: .default))
        }
    }
 
}

