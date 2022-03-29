//
//  CylField.swift
//  MathSolver
//
//  Created by Frederik Niebling on 22/03/2022.
//

import SwiftUI

struct CylField: View {
    //    MARK: - Properties
    @State var h: Double = 0
    @State var d: Double = 0
    @State var r: Double = 0
    
    //    MARK: - Body
    var body: some View {
        
        VStack (alignment: .leading, spacing: 10) {
            
//            Tekstfelt for Radius
            Text("Radius")
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
            
            let V = Double.pi * pow(r, 2) * h
            let akrum = 2 * Double.pi * r * h
            
            if (V <= 0) {
                Text("V = π x r^2 x h")
            } else if (V > 0) {
                Text("V = \(V, specifier: "%.2f")")
            }
            
            if (akrum <= 0) {
                Text("Akrum = 2 x π x r x h")
            } else if (akrum > 0) {
                Text("Akrum = \(akrum, specifier: "%.2f")")
            }
            
            
            
        } // VStack
    }
    
    // MARK: - Preview
    struct CylField_Previews: PreviewProvider {
        static var previews: some View {
            CylField()
                .previewLayout(.fixed(width: 300, height: 500))
        }
    }
}
