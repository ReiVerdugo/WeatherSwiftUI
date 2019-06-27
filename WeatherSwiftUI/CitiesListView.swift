//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Reinaldo Verdugo on 6/23/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import SwiftUI

struct CitiesListView : View {
  var cities = ["Chambery", "Paris"]
  var body: some View {
    NavigationView {
      List {
        Section(header: Text("Your Cities")) {
          ForEach(cities.identified(by: \.self)) { city in
            NavigationButton(destination: WeatherDetail()) {
              CityRow(text: city)
              
            }
          }
        }
      }
      .navigationBarTitle(Text("Weather"))
      .navigationBarItems(
        leading: EditButtonItem(),
        trailing: Button(action: {},
                         label: {
          Image(systemName: "plus.circle.fill")
          .font(.system(size: 30))
        })
      )
    }
  }
}

struct EditButtonItem: View {
  var body: some View {
    Button(action: {
      // Actions
    }, label: { Text("Edit") })
  }
}

struct CityRow: View {
  var text: String
  var body: some View {
    HStack {
      Text(text)
        .font(.system(size: 30))
      Spacer()
      SingleWeatherView(
        imageName: "cloud.sun.fill",
        text:"25°C",
        color: .gray,
        size: 30,
        height: 50)
    }.padding()
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        CitiesListView()
    }
}
#endif
