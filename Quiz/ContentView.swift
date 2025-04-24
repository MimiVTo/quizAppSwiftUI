//
//  ContentView.swift
//  Quiz
//
//  Created by StudentPM on 4/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                //Background stuff
                Image("wallpaper")
                    .resizable()
                    .frame(width: 900, height: 900)
//                    .ignoresSafeArea()
                //Lil rectangles for some details I guess
                Rectangle()
                    .fill(Color(hex:"#dfdac5"))
                    .frame(width:380, height:430)
                //Border for the background detail
                Rectangle()
                    .fill(Color(hex:"#b8a89b"))
                    .frame(width:350, height:400)
                VStack{
                    Spacer()
                    //Title of the game
                    Text("Quiz")
                        .padding()
                        .frame(width:300)
                        .background(Color(hex:"#84202b"))
                        .foregroundColor(Color(hex:"#dfdac5"))
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .cornerRadius(10)
                    //Cake slice cause it looks nice and its the theme of the game
                    Image("cakeSlice")
                        .resizable()
                        .frame(width: 200, height: 200)
                    //Link to the next page
                    NavigationLink(destination:{ QuestionsView()
                            .navigationBarBackButtonHidden()
                    }){
                        //Name of the navigation link
                        Text("Begin")
                            .padding()
                            .frame(width:300)
                            .background(Color(hex:"#84202b"))
                            .foregroundColor(Color(hex:"#dfdac5"))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .cornerRadius(10)
                    }
                    
                    Spacer()
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
    ContentView()
}
