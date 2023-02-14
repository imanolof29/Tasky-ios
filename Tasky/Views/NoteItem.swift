//
//  NoteItem.swift
//  Tasky
//
//  Created by Imanol Ortiz on 14/2/23.
//

import SwiftUI

struct NoteItem: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            Toggle("", isOn: $isOn)
                .toggleStyle(.automatic)
            HStack{
                VStack{
                    Text("Comprar el pan")
                    Text("2023-02-14")
                }
                Text("Baja")
            }
        }.background(.red)
    }
}

struct NoteItem_Previews: PreviewProvider {
    static var previews: some View {
        NoteItem()
    }
}
