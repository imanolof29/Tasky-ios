//
//  StatusCard.swift
//  Tasky
//
//  Created by Imanol Ortiz on 14/2/23.
//

import SwiftUI

struct StatusCard: View {
    
    let color: Color
    
    let title: String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .foregroundColor(color)
                .opacity(2)
            Text("3")
                .foregroundColor(color)
                .opacity(2)
        }
        .padding(26)
        .background(color)
        .opacity(0.3)
    }
}

struct StatusCard_Previews: PreviewProvider {
    static var previews: some View {
        StatusCard(color: .red, title: "Pendiente")
    }
}
