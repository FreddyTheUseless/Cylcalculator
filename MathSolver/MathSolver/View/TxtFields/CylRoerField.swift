//
//  CylRoerField.swift
//  MathSolver
//
//  Created by Frederik Niebling on 23/03/2022.
//

import SwiftUI

struct CylRoerField: View {
    @State var h: Double = 0 // Højde
    @State var R: Double = 0 // Inder Radius
    @State var r: Double = 0 // Yder radius
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){ // sætter komponenter i vertikal stak med 10px mellemrum og sætter komponenter i venstre side
            
//            Tekstfelt for Radius R
            Text("Radius R")
                .foregroundColor(.cyan)
                .font(.system(size: 20))
            TextField("", value: $R, formatter: NumberFormatter())
            
            
//            Tekstfelt for Radius
            Text("Radius r")
                .foregroundColor(.orange)
                .font(.system(size: 20))
            TextField("", value: $r, formatter: NumberFormatter())
            
            
//            Tekstfelt for højde
            Text("Højde")
                .foregroundColor(.orange)
                .font(.system(size: 20))
            TextField("indsæt værdi for H", value: $h, formatter: NumberFormatter())
            
//            MARK: - Udregninger
            let V = Double.pi * h * (pow(R, 2) + pow(r, 2)) // udregning for Volume
            let akrum = 2 * Double.pi * r * h // Udregning for overfladeareal
            
            if (V <= 0) {
                Text("Volume = π x h x (R^2 + r^2)") // sætter formel hvis værdi = 0
            } else if (V > 0) {
                Text("Volume = \(V, specifier: "%.2f")") // sætter udregning med 2 decimal nøjagtighed
            } //: IF STATEMENT
            
            if (akrum <= 0) {
                Text("Overflade areal = 2 x π x r x h") // sætter formel hvis værdi = 0
            } else if (akrum > 0) {
                Text("Overflade areal = \(akrum, specifier: "%.2f")")// sætter udregning med 2 decimal nøjagtighed
            } //: IF STATEMENT
        }//: VSTACK
    }//: BODY
}

struct CylRoerField_Previews: PreviewProvider {
    static var previews: some View {
        CylRoerField()
    }
}
