//
//  SegmentedView.swift
//  MathSolver
//
//  Created by Frederik Niebling on 23/03/2022.
//

import SwiftUI

struct SegmentedView: View {
//    MARK: - PROPERTIES
    @State private var selectedView = 0
    
//    MARK: - BODY
    var body: some View {
        VStack {
            Picker("", selection: $selectedView, content: {
                Text("Cylinder").tag(0)
                Text("Cylinder Rør").tag(1)
            }) // laver en kontrol for at vælge forskellige views
            .pickerStyle(SegmentedPickerStyle()) // sætter style til segmented picker
            if (selectedView == 0) {
                CylinderView() // hvis picker værdi = 0 bliver cylinderview vist
            } else {
                CylRoerView() // ellers bliver cylrør vist
            }//: IF STATEMENT
        }//: VSTACK
    }//: BODY
}

//MARK: - Preview
struct SegmentedView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedView()
    }
}
