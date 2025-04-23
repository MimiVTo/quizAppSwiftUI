//
//  QuestionsView.swift
//  Quiz
//
//  Created by StudentPM on 4/23/25.
//

import SwiftUI
struct Questions{
    var question: String
    var correctAnswer: String
    var answers: [String]
}
struct QuestionsView: View {
    @State var arrayOfQuestions: [Questions] = [
        //First Question
        Questions(question: "When was red velvet cake made?", correctAnswer: "Victorian Era", answers: ["Victorian Era", "Medieval Era", "Modern Era", "Colonial Era"]),
        //Second Question
        Questions(question: "What flavor is the red velvet frosting?", correctAnswer: "Cream Cheese", answers: ["Vanilla", "Strawberry", "Cream Cheese", "Chocolate"]),
        //Third Question
        Questions(question: "How did bakers during WW2 enhance the color of red velvet cake?", correctAnswer: "Boiled beet juices", answers: ["Peppers", "Boiled beet juices", "Strawberry skins", "Cranberry juices"]),
        //Fourth Question
        Questions(question: "What gives red velvet its flavor?", correctAnswer: "Buttermilk and vinegar", answers: ["Hopes and prayers", "Vanilla extract and cocoa powder", "Cocoa powder and buttermilk", "Buttermilk and vinegar"]),
        //Fifth Question
        Questions(question: "Why is red velvet called that?", correctAnswer: "From its texture", answers: ["From its texture", "From it being on red velvet fabric", "From its taste", "From its creator's name"]),
        //Sixth Question
        Questions(question: "What causes the red color in red velvet?", correctAnswer: "Chemical reaction", answers: ["From love", "Chemical reaction of ingredients", "Cherries", "Beet juices being mixed in"]),
        //Seventh Question
        Questions(question: "Who popularized red velvet?", correctAnswer: "Manhattan's Waldorf Astoria", answers: ["The Adams Extract Company", "Franklin D. Roosevelt", "Manhattan's Waldorf Astoria", "Marilyn Monroe"]),
        //Eighth Question
        Questions(question: <#T##String#>, correctAnswer: <#T##String#>, answers: <#T##[String]#>),
    ]
    @State var score: Int = 0
    @State var currentQuestion: Int = 0
    @State var finish: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("wallpaper")
                    .resizable()
                    .frame(width: 900, height: 900)
                    .ignoresSafeArea()
                VStack{
                    Text("Score: \(score)")
                        .padding()
                        .frame(width:300)
                        .background(Color(hex:"#84202b"))
                        .foregroundColor(Color(hex:"#dfdac5"))
                        .font(.title)
                        .fontWeight(.semibold)
                        .cornerRadius(10)
                    Text(arrayOfQuestions[currentQuestion].question)
                        .padding()
                        .frame(width:300)
                        .background(Color(hex:"#dfdac5"))
                        .foregroundColor(Color(hex:"#84202b"))
                        .font(.title)
                        .fontWeight(.semibold)
                        .cornerRadius(10)
                    ForEach(arrayOfQuestions[currentQuestion].answers.indices, id:\.self){i in
                        Button(action:{
                            if arrayOfQuestions[currentQuestion].answers[i] == arrayOfQuestions[currentQuestion].correctAnswer{
                                score += 1
                            }
                            if currentQuestion != arrayOfQuestions.count{
                                currentQuestion += 1
                            }
                            else{
                                finish = true
                            }
                        }){
                            Text(arrayOfQuestions[currentQuestion].answers[i])
                                .padding()
                                .frame(width:300)
                                .background(Color(hex:"#84202b"))
                                .foregroundColor(Color(hex:"#dfdac5"))
                                .font(.title)
                                .fontWeight(.semibold)
                                .cornerRadius(10)
                        }
                    }
                    if finish == true{
                        NavigationLink(destination:{
                            FinishView()
                                .navigationBarBackButtonHidden()
                        }){
                            Text("Finish!")
                                .padding()
                                .frame(width:300)
                                .background(Color(hex:"#dfdac5"))
                                .foregroundColor(Color(hex:"#84202b"))
                                .font(.title)
                                .fontWeight(.semibold)
                                .cornerRadius(10)
                        }
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
    QuestionsView()
}
