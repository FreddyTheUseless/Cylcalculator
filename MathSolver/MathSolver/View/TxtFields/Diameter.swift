//
//  Diameter.swift
//  MathSolver
//
//  Created by Frederik Niebling on 23/03/2022.
//

import SwiftUI



struct Diameter: View {
    
   
    
    var body: some View {
        VStack(alignment: .leading){
        Text("Diameter")
            .foregroundColor(.cyan)
            .font(.system(size: 20))
        TextField("", value: $test, formatter: NumberFormatter())
        }
    }
}

struct Diameter_Previews: PreviewProvider {
    static var previews: some View {
        Diameter()
    }
}
