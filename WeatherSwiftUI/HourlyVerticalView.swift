//
//  HourlyVerticalView.swift
//  WeatherSwiftUI
//
//  Created by Reinaldo Verdugo on 6/26/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import SwiftUI

struct HourlyVerticalView : View {
  var firstText = ""
  var imageName = ""
  var secondText = ""
  var height: CGFloat = 100
  
  var body: some View {
    VStack {
      Label(text: firstText,
            size: 13)
      Image(systemName: imageName)
      Label(text: secondText,
            weight: .bold)
    }.frame(height: height)
  }
}

#if DEBUG
struct HourlyVerticalView_Previews : PreviewProvider {
  static var previews: some View {
    HourlyVerticalView()
  }
}
#endif
