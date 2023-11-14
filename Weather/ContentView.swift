//
//  ContentView.swift
//  Weather
//
//  Created by MIch on 2023/11/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Johannesburg, JHB")
                    .font(.system(size:32,weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    
                    Text("28°")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom,40)
                
              HStack(spacing:20){
                  WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature:27)
                    WeatherDayView(
                      dayOfWeek: "WED",
                       imageName: "sun.rain.fill", temperature:25)
                    WeatherDayView(
                        dayOfWeek:"THU",
                        imageName:"smoke",temperature:20)
                    WeatherDayView(
                    dayOfWeek:"FRI",
                    imageName: "cloud.moon.bolt", temperature:21)
                    WeatherDayView(
                        dayOfWeek: "SAT",
                        imageName:"wind", temperature:18)

                }
                  Spacer()
                
            }
       
        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}
