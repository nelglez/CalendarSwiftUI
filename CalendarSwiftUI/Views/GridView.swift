//
//  GridView.swift
//  CalendarSwiftUI
//
//  Created by Nelson Gonzalez on 1/28/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct GridView: View {
    
    var date: DateModel
    
    var body: some View {
        
        ZStack {
            Rectangle().fill(Color.white).cornerRadius(10).shadow(color: date.isSelected ? .red :.blue, radius: 5, x: 1, y: 1).frame(width: 116, height: 116)
            VStack {
                
                Text(self.date.monthAsString).font(.title)
                Text("\(self.date.day)").font(.title)
            }
            
        }.padding(2)
        
        
    }
    
}
struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(date: DateModel())
    }
}
