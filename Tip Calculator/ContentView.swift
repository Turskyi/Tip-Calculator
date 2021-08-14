//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Dmytro on 14.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State var total: String = "20"
    @State var tipPercent: Double = 15.0
    
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack{
                Text("$")
                TextField("Total", text: $total)
                    .border(Color.black,width: 0.25)
            }
            .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            
            if let totalNum = Double(total){
                Text("Tip Amount: $\(totalNum * tipPercent / 100, specifier:"%0.2f" )")
            } else {
                Text("Please eneter a valid numerical value.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
