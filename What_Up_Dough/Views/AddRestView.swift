//
//  AddRestView.swift
//  What_Up_Dough
//
//  Created by Jacob Best on 9/15/23.
//

import SwiftUI

struct AddRestView: View {
    var restaurant = [Restaurant]()
    
    @State var str: String = ""
    @State var str1: String = ""
    @State var str2: String = ""
    @State var str3: String = ""
    var body: some View {
        NavigationStack {
            VStack{
                Form{
                    TextField(text: $str) {
                        Text("Name")
                    }
                    TextField(text: $str1) {
                        Text("Description")
                    }
                    TextField(text: $str2) {
                        Text("URL")
                    }
                    TextField(text: $str3) {
                        Text("Location")
                    }
                }
            }
            .navigationTitle("Add Restaurant")
        }
    }
}

#Preview {
    AddRestView(str: "", str1: "", str2: "", str3: "")
}
