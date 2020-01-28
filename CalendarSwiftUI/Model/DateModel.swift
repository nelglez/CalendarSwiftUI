//
//  DateModel.swift
//  CalendarSwiftUI
//
//  Created by Nelson Gonzalez on 1/28/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import Foundation

struct DateModel: Hashable {
    var day: Int = 0
    var monthAsString: String = ""
    var monthAsInt: Int = 0
    var year: String = ""
    var isSelected: Bool = false
}
