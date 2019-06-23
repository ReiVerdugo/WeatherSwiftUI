//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Reinaldo Verdugo on 6/23/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
      NavigationView {
        List {
          Section(header: Text("Your Cities")) {
            CityRow()
            .padding()
          }
        }
        .navigationBarTitle(Text("Weather"))
        .navigationBarItems(
          leading: EditButtonItem(),
          trailing: Button(action: {},
                           label: {
            Image(systemName: "plus.circle")
            .imageScale(Image.Scale.large)
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
  var body: some View {
    HStack {
      Text("Chambery")
        .font(.system(size: 30))
      Spacer()
      Image(systemName: "cloud.sun")
        .foregroundColor(.gray)
      Text("25°C")
        .font(.system(size: 30))
        .color(.gray)
    }
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
