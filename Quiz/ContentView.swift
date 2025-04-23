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
                VStack{
                    Spacer()
                    Text("Quiz")
                        .padding()
                        .frame(width:300)
                        .background(Color(hex:"#84202b"))
                        .foregroundColor(Color(hex:"#dfdac5"))
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .cornerRadius(10)
                    Image("cakeSlice")
                        .resizable()
                        .frame(width: 200, height: 200)
                    NavigationLink(destination:{ QuestionsView()
                            .navigationBarBackButtonHidden()
                    }){
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
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background{
                    Color(hex:"#b8a89b")
                        .ignoresSafeArea()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
