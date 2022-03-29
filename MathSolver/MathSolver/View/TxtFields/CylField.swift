//
//  CylField.swift
//  MathSolver
//
//  Created by Frederik Niebling on 22/03/2022.
//

import SwiftUI

struct CylField: View {
    //    MARK: - Properties
    
//    textfelt variabler
    @State var h: Double = 0 // Højde
    @State var r: Double = 0 // radius
    
    //    MARK: - Body
    var body: some View {
        
        VStack (alignment: .leading, spacing: 10) { // sætter komponenter i vertikal stak med 10px mellemrum og sætter komponenter i venstre side
            
            
//            Tekstfelt for Radius
            Text("Radius")
                .foregroundColor(.orange)
                .font(.system(size: 20))
            TextField("", value: $r, formatter: NumberFormatter()) // text for felt samt variabel hvor brugerinput bliver lagret, da vi bruger int skal variablen have en værdi og derfor er der ingen text vist i textfelt
            
            
//            Tekstfelt for højde
            Text("Højde")
                .foregroundColor(.orange)
                .font(.system(size: 20))
            TextField("", value: $h, formatter: NumberFormatter()) // text for felt samt variabel hvor brugerinput bliver lagret, da vi bruger int skal variablen have en værdi og derfor er der ingen text vist i textfelt
            
            
//            MARK: - udregninger
            let V = Double.pi * pow(r, 2) * h // formel for Volume
            let akrum = 2 * Double.pi * r * h // formel for overfalde areal
            
            if (V <= 0) {
                Text("Volume = π x r^2 x h") // hvis volume ikke har en værdi, viser vi formlen
            } else if (V > 0) {
                Text("Volume = \(V, specifier: "%.2f")") // hvis volume har en værdi, viser vi udregning med 2 decimaler
            } //: IF STATEMENT
            
            
            if (akrum <= 0) {
                Text("Overflade areal = 2 x π x r x h") // hvis overfladeareal ikke har en værdi, viser vi formlen
            } else if (akrum > 0) {
                Text("Overflade areal = \(akrum, specifier: "%.2f")") // hvis overfladeareal har en værdi, viser vi udregning med 2 decimaler
            } //: IF STATEMENT
            
            
            
        } //: VSTACK
    } //: BODY
    
    // MARK: - Preview
    struct CylField_Previews: PreviewProvider {
        static var previews: some View {
            CylField()
                .previewLayout(.fixed(width: 300, height: 500))
        }
    }
}
