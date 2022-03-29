//
//  CylinderView.swift
//  MathSolver
//
//  Created by Frederik Niebling on 23/03/2022.
//

import SwiftUI

struct CylinderView: View {
    var body: some View {
        HStack(spacing: 10) {
            Spacer()
            CylField()
            ImageView(image: "Cylinder")
            Spacer()
            
        }//. HStack
    }
}

struct CylinderView_Previews: PreviewProvider {
    static var previews: some View {
        CylinderView()
    }
}
