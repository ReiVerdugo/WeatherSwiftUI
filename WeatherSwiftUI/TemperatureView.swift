//
//  TemperatureView.swift
//  WeatherSwiftUI
//
//  Created by Reinaldo Verdugo on 6/27/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import SwiftUI

struct TemperatureView : View {
  var firstText = ""
  var secondText = ""
  var firstColor: Color = .gray
  var secondColor: Color = .black
  var firstSize: CGFloat = 13
  var secondSize: CGFloat = 17
  
  var body: some View {
    VStack (alignment: .trailing) {
      Label(text: firstText,
            color: firstColor,
            size: firstSize,
            weight: .bold)
      Label(text: secondText,
            color: secondColor,
            size: secondSize,
            weight: .bold)
    }
  }
}

#if DEBUG
struct TemperatureView_Previews : PreviewProvider {
    static var previews: some View {
        TemperatureView()
    }
}
#endif
