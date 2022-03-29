//
//  calculate.swift
//  MathSolver
//
//  Created by Frederik Niebling on 23/03/2022.
//

import SwiftUI

struct calculate: View {
    @State var h: Double = 0
    @State var r: Double = 0
    @State var d: Double = 0
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            let V = Double.pi * pow(r, 2) * h
            let akrum = 2 * Double.pi * r * h
            
            if (V <= 0) {
                Text("π x r^2 x h")
            } else if (V > 0) {
                Text("V = \(V, specifier: "%.2f")")
            }
            
            if (akrum <= 0) {
                Text("2 x π x r x h")
            } else if (akrum > 0) {
                Text("Akrum = \(akrum, specifier: "%.2f")")
            }
        }
    }
}

struct calculate_Previews: PreviewProvider {
    static var previews: some View {
        calculate(h: 6, r: 6, d: 6)
    }
}
