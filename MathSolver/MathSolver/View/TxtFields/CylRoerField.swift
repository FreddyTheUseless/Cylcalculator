//
//  CylRoerField.swift
//  MathSolver
//
//  Created by Frederik Niebling on 23/03/2022.
//

import SwiftUI

struct CylRoerField: View {
    @State var h: Double = 0
    @State var R: Double = 0
    @State var r: Double = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
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
        
        Text("Du behøver kun at indtaste for enten diameter eller radius")
            .foregroundColor(.gray)
            .font(.system(size: 10))
        
        
        //            Tekstfelt for højde
        Text("Højde")
            .foregroundColor(.orange)
            .font(.system(size: 20))
        TextField("indsæt værdi for H", value: $h, formatter: NumberFormatter())
            
            let V = Double.pi * h * (pow(R, 2) + pow(r, 2))
            let akrum = 2 * Double.pi * r * h
            
            if (V <= 0) {
                Text("V = π x h x (R^2 + r^2)")
            } else if (V > 0) {
                Text("V = \(V, specifier: "%.2f")")
            }
            
            if (akrum <= 0) {
                Text("Akrum = 2 x π x r x h")
            } else if (akrum > 0) {
                Text("Akrum = \(akrum, specifier: "%.2f")")
            }
        }
    }
}

struct CylRoerField_Previews: PreviewProvider {
    static var previews: some View {
        CylRoerField()
    }
}
