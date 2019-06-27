//
//  WeatherDetail.swift
//  WeatherSwiftUI
//
//  Created by Reinaldo Verdugo on 6/24/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import SwiftUI

struct WeatherDetail : View {
  var cities = ["ChamberyChambery", "Paris","Chambery", "Paris","Chambery", "Paris","Chambery", "Paris","Chambery", "Paris","Chambery", "Paris","Chambery", "Paris","Chambery", "Paris","Chambery", "Paris","Chambery", "Paris","Chambery", "Paris"]
  
  var body: some View {
    List {
      Section(header: Text("Now")) {
        HStack {
          Spacer()
          SingleWeatherView(
            imageName: "cloud.sun.fill",
            text: "25°C",
            color: .black,
            size: 35,
            height: 120,
            alignment: .center)
          Spacer()
        }
      }
      Section(header: Text("Hourly")) {
        ScrollView(showsVerticalIndicator: false) {
          HStack(spacing: 10) {
            ForEach(cities.identified(by: \.self)) { city in
              HourlyVerticalView(
                firstText: "15:00",
                imageName: "cloud.sun.fill",
                secondText: "25°C")
            }
          }
            
        }.frame(height: 100)
      }
      Section(header: Text("This week")) {
        ForEach(cities.identified(by: \.self)) { city in
          WeeklyHorizontalView(text: city)
        }
      }
    }.navigationBarTitle(Text("Paris"))
  }
}



#if DEBUG
struct WeatherDetail_Previews : PreviewProvider {
    static var previews: some View {
        WeatherDetail()
    }
}
#endif
