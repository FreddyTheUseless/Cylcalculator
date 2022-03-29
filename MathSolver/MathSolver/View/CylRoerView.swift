//
//  CylRoerView.swift
//  MathSolver
//
//  Created by Frederik Niebling on 23/03/2022.
//

import SwiftUI

struct CylRoerView: View {
//    MARK: - Properties
    
//    MARK: - BODY
    var body: some View {
        HStack(spacing: 10) { // lægger følgende komponenter i horizontal stak
            Spacer() // giver et mellemrum
            CylRoerField() // indsætter CylRoerField
            ImageView(image: "Cylror") // indsætter billede af cylrør fra assets
            Spacer() // giver et mellemrum
            
        }//: HSTACK
    }
}
// MARK: - Preview
struct CylRoerView_Previews: PreviewProvider {
    static var previews: some View {
        CylRoerView()
    }
}
