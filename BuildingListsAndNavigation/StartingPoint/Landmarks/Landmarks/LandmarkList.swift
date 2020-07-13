//
//  LandmarkList.swift
//  Landmarks
//
//  Created by David McGovern on 16/6/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // use curly braces for List
        //List{LandmarkRow(landmark: landmarkData[0])
        //     LandmarkRow(landmark: landmarkData[1])}
        NavigationView {
            List(landmarkData) { landmark in
               NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }   // don't get this syntax
            .navigationBarTitle(Text("Landmarks"))
        } // title INSIDE the view?
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
         ForEach(["iPhone SE", "iPhone XS Max", "iPad Pro (12.9-inch)"], id: \.self) { deviceName in
                   LandmarkList()
                       .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
               }
    }
}

