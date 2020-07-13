//
//  UserData.swift
//  Landmarks
//
//  Created by David McGovern on 13/7/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI
import Combine


final class UserData: ObservableObject  {
    @Published var showFavouritesOnly = false
    @Published var landmarks = landmarkData
}
