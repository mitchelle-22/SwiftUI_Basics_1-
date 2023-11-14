//
//  ContentView.swift
//  Weather
//
//  Created by MIch on 2023/11/13.
//

import SwiftUI

struct ContentView: View {
    @State private var  isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight, topColor: <#T##Color#>, bottomColor: <#T##Color#>)
            VStack{
                CityTextView(cityName: "Johannesburg,JHB")
                ImageView(imageName: isNight ? "moon.stars.circle.fill": "cloud.sun.fill", temperature: 28)
                    
            
                
              HStack(spacing:20){
                  WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature:27)
                    WeatherDayView(
                      dayOfWeek: "WED",
                       imageName: "sun.rain.fill", temperature:25)
                    WeatherDayView(
                        dayOfWeek:"THU",
                        imageName:"cloud.fog.fill",temperature:20)
                    WeatherDayView(
                    dayOfWeek:"FRI",
                    imageName: "cloud.sun.bolt.fill", temperature:21)
                    WeatherDayView(
                        dayOfWeek: "SAT",
                        imageName:"wind", temperature:18)

                }
                  Spacer()
                Button{
                    isNight.toggle()
                }label: {
                    ButtonView(name: "Change Day Time", textColor: .white, backgroundColor: .blue)
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

struct BackgroundView: View {
    
    @Binding var isNight:Bool
    
    var topColor:Color
    var bottomColor:Color
    var body: some View {
        
       
        LinearGradient(colors: [isNight ? . black: .blue,isNight ? .gray : Color("lightBlue")],
                startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
struct CityTextView: View {
    var cityName : String
    var body: some View {
        Text(cityName)
            .font(.system(size:32,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct ImageView:View {
    var imageName: String
    var temperature:Int
    var body: some View {
        Image(systemName:imageName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180,height: 180)
        Text("\(temperature)°")
            .font(.system(size: 70,weight: .medium))
            .foregroundColor(.white)
            .padding(.bottom,40)
    }
       
}
   

