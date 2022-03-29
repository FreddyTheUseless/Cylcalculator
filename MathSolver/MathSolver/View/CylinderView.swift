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
            CylField()
            
        ImageView(image: "Cylinder")
            
        }//. HStack
    }
}

struct CylinderView_Previews: PreviewProvider {
    static var previews: some View {
        CylinderView()
    }
}
