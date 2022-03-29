//
//  CylinderView.swift
//  MathSolver
//
//  Created by Frederik Niebling on 23/03/2022.
//

import SwiftUI

struct CylinderView: View {
//    MARK: - Properties
    
//    MARK: - Body
    var body: some View {
        HStack(spacing: 10) { // lægger følgende komponenter i horizontal stak
            Spacer() // giver et mellemrum
            CylField() // indsætter CylField
            ImageView(image: "Cylinder") // indsætter billede af cylinder fra assets
            Spacer() // giver et mellemrum
            
        }//. HStack
    }
}
// MARK: - Preview
struct CylinderView_Previews: PreviewProvider {
    static var previews: some View {
        CylinderView()
    }
}
