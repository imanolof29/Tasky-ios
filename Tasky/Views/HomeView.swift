//
//  HomeView.swift
//  Tasky
//
//  Created by Imanol Ortiz on 14/2/23.
//

import SwiftUI

struct HomeView: View {
    
    let items: [NoteItem] = [NoteItem(), NoteItem()]
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HStack{
                        StatusCard(color: .blue, title: "Pendiente")
                        StatusCard(color: .red, title: "Caducadas")
                        StatusCard(color: .gray, title: "Completadas")
                    }
                    
                }
                .navigationTitle("Tasky")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(
                            action: {},
                            label: {
                                Label("Add", systemImage: "plus")
                            })
                    }
                }
            }
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
