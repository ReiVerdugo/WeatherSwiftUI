//
//  SingleWeatherView.swift
//  WeatherSwiftUI
//
//  Created by Reinaldo Verdugo on 6/25/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import SwiftUI

struct SingleWeatherView : View {
  var imageName: String
  var text: String
  var color: Color
  var size: CGFloat
  var height: CGFloat = 60
  var alignment: Alignment = .leading
  
  var body: some View {
    HStack {
      Image(systemName: imageName)
        .font(.system(size: size))
        .foregroundColor(color)
      Label(text: text, color: color, size: size)
      }.frame(height: height, alignment: alignment)
  }
}

#if DEBUG
struct SingleWeatherView_Previews : PreviewProvider {
    static var previews: some View {
      SingleWeatherView(imageName: "", text: "", color: .black, size: 60)
    }
}
#endif
