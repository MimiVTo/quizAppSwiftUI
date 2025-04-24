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
            ZStack{
                //Background
                Image("wallpaper")
                    .resizable()
                    .frame(width: 900, height: 900)
                //Background detail box
                Rectangle()
                    .fill(Color(hex:"#dfdac5"))
                    .frame(width:380, height:730)
                //Border for the background detail box
                Rectangle()
                    .fill(Color(hex:"#b8a89b"))
                    .frame(width:350, height:700)
                VStack{
                    //Congratulating player and telling them their score
                    Text("Congrats on Finishing!\nYour Score is \(finalScore)/\(total)")
                        .padding()
                        .frame(width:300, alignment: .center)
                        .background(Color(hex:"#84202b"))
                        .foregroundColor(Color(hex:"#dfdac5"))
                        .font(.title)
                        .fontWeight(.semibold)
                        .cornerRadius(10)
                    //Cool cake cause they finished frfr!
                    Image("Heartcake")
                        .resizable()
                        .frame(width: 300,height: 300)
                    //Navigation link to restart
                    NavigationLink(destination:{
                        ContentView()
                            .navigationBarBackButtonHidden()
                    }){
                        //Button name
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
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background{
//                    Color(hex:"#b8a89b")
//                        .ignoresSafeArea()
//                }
            }
        }
    }
}

#Preview {
    FinishView()
}
