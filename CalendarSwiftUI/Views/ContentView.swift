//
//  ContentView.swift
//  CalendarSwiftUI
//
//  Created by Nelson Gonzalez on 12/30/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var dateModelController = DateModelController()
    
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(spacing: 10) {
                ForEach(dateModelController.listOfValidDates, id: \.self) { date in
                    GridView(date: date).onTapGesture {
                        
                        self.dateModelController.toggleIsSelected(date: date)
                    }
                }
                
            }
            
        })
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
