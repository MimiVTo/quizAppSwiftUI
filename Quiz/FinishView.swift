//
//  FinishView.swift
//  Quiz
//
//  Created by StudentPM on 4/23/25.
//

import SwiftUI

struct FinishView: View {
    @State var finalScore : Int = 0
    @State var total: Int = 0

    var body: some View {
        NavigationView{
            VStack{
                Text("Congrats on Finishing!\nYour Score is \(finalScore)/\(total)")
                    .padding()
                    .frame(width:300, alignment: .center)
                    .background(Color(hex:"#84202b"))
                    .foregroundColor(Color(hex:"#dfdac5"))
                    .font(.title)
                    .fontWeight(.semibold)
                    .cornerRadius(10)
                Image("Heartcake")
                    .resizable()
                    .frame(width: 300,height: 300)
                NavigationLink(destination:{
                    ContentView()
                        .navigationBarBackButtonHidden()
                }){
                    Text("Play Again")
                        .padding()
                        .frame(width:300)
                        .background(Color(hex:"#84202b"))
                        .foregroundColor(Color(hex:"#dfdac5"))
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .cornerRadius(10)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background{
                Color(hex:"#b8a89b")
                    .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    FinishView()
}
