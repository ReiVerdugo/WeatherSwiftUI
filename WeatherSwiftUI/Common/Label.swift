//
//  Label.swift
//  WeatherSwiftUI
//
//  Created by Reinaldo Verdugo on 6/27/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import SwiftUI

struct Label : View {
  var text: String
  var color: Color = .black
  var size: CGFloat = 17
  var weight: Font.Weight = .medium
  
  var body: some View {
    Text(text)
      .fontWeight(weight)
      .foregroundColor(color)
      .font(.system(size: size))
  }
}

#if DEBUG
struct Label_Previews : PreviewProvider {
  static var previews: some View {
    Label(text: "")
  }
}
#endif
