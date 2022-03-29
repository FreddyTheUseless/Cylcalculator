//
//  CylRoerView.swift
//  MathSolver
//
//  Created by Frederik Niebling on 23/03/2022.
//

import SwiftUI

struct CylRoerView: View {
    
    
    var body: some View {
        HStack(spacing: 10) {
            CylRoerField()
            ImageView(image: "Cylror")
            
        }
    }
}

struct CylRoerView_Previews: PreviewProvider {
    static var previews: some View {
        CylRoerView()
    }
}