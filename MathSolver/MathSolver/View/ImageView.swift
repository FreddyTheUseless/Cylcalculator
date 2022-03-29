//
//  ImageView.swift
//  MathSolver
//
//  Created by Frederik Niebling on 22/03/2022.
//

import SwiftUI

struct ImageView: View {
//    MARK: - Properties
    var image: String = ""
    
//    MARK: - Body
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
//        Skaber et resizable billede som altid vil passe til skærmen
    }//: BODY
}

// MARK: - Preview
struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: "")
    }
}
