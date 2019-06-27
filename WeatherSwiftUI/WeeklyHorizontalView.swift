//
//  WeeklyHorizontalView.swift
//  WeatherSwiftUI
//
//  Created by Reinaldo Verdugo on 6/26/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import SwiftUI

struct WeeklyHorizontalView : View {
  var text = ""
  var imageName = "cloud.sun.fill"
  var body: some View {
    HStack {
      Text(text)
        .frame(width: 120, alignment: .leading)
      Spacer()
      Image(systemName: imageName)
      Spacer()
      HStack() {
        TemperatureView(
          firstText: "min",
          secondText: "25°C")
        TemperatureView(
          firstText: "max",
          secondText: "25°C")
        }.frame(width: 120, alignment: .trailing)
    }
  }
}

#if DEBUG
struct WeeklyHorizontalView_Previews : PreviewProvider {
  static var previews: some View {
    WeeklyHorizontalView()
  }
}
#endif
