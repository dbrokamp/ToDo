//
//  RoundedBox.swift
//  ToDo
//
//  Created by Drew Brokamp on 11/20/21.
//

import SwiftUI

struct RoundedBox: View {
    
    var name: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            RoundedRectangle(cornerRadius: 10.0)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.black, .purple]), center: .bottomLeading, startRadius: 3, endRadius: 200)
                )
                .frame(idealWidth: 100, maxWidth: 200, idealHeight: 100, maxHeight: 200, alignment: .bottomLeading)
            Text(name)
                .foregroundColor(.white)
                .fontWeight(.heavy)
                .padding()
            
        }
        
    }
}

struct RoundedBox_Previews: PreviewProvider {
    static var previews: some View {
        RoundedBox(name: "Box Name")
    }
}
