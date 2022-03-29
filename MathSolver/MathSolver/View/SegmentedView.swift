//
//  SegmentedView.swift
//  MathSolver
//
//  Created by Frederik Niebling on 23/03/2022.
//

import SwiftUI

struct SegmentedView: View {
    
    @State private var selectedView = 0
    
    var body: some View {
        VStack {
            Picker("", selection: $selectedView, content: {
                Text("Cylinder").tag(0)
                Text("Cylinder Rør").tag(1)
            })
            .pickerStyle(SegmentedPickerStyle()) // <1>
            if (selectedView == 0) {
                CylinderView()
            } else {
                CylRoerView()
            }
        }
        
    }
}

struct SegmentedView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedView()
    }
}
