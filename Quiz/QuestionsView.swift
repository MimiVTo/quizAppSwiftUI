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
        Questions(question: "What causes the red color in red velvet?", correctAnswer: "Chemical reaction", answers: ["From love", "Chemical reaction", "Cherries", "Beet juices being mixed in"]),
        //Seventh Question
        Questions(question: "Who popularized red velvet?", correctAnswer: "Manhattan's Waldorf Astoria", answers: ["The Adams Extract Company", "Franklin D. Roosevelt", "Manhattan's Waldorf Astoria", "Marilyn Monroe"]),
        //Eighth Question
        Questions(question: "What holiday is red velvet cake important for?", correctAnswer: "Juneteenth", answers: ["Memorial Day", "Independence Day", "Veteran's Day", "Juneteenth"]),
        //Ninth Question
        Questions(question: "What was the original flavor of the frosting?", correctAnswer: "French-style buttercream", answers: ["German-style buttercream", "French-style buttercream", "Italian-style buttercream", "Russian-style buttercream"]),
        //Tenth Question
        Questions(question: "When did red velvet cake lose its initial popularity?", correctAnswer: "1970s", answers: ["1960s", "1990s", "1970s", "1980s"]),
        //Eleventh Question
        Questions(question: "What caused the emergence of red velvet cake?", correctAnswer: "Cocoa powder", answers: ["Cocoa powder", "Red 40", "Beetroot", "Buttermilk"]),
        //Twelfth Question
        Questions(question: "Where was red velvet cake made?", correctAnswer: "New York", answers: ["Chicago", "San Jose", "Los Angeles", "New York"]),
        //Thirteenth Question
        Questions(question: "Which part of America was red velvet made", correctAnswer: "South", answers: ["North", "East", "South", "West"]),
        //Fourteenth Question
        Questions(question: "What's an alternative name for red velvet cake?", correctAnswer: "Flame cake", answers: ["Tears of Mr.C's students", "Flame cake", "Beet cake", "Dolly Cake"]),
        //Fifteenth Question
        Questions(question: "What's a variant of red velvet cake?", correctAnswer: "Bundt cake", answers: ["Bundt cake", "Vanilla cake", "Carrot cake", "Chiffon cake"]),
        //Sixteeth Question
        Questions(question: "When did red velvet reach peak popularity?", correctAnswer: "Early 2000s", answers: ["Late 90s", "Late 2000s", "Early 90s", "Early 2000s"]),
        //Seventeenth Question
        Questions(question: "Why did red velvet lose its initial popularity?", correctAnswer: "Ban of red dye #2", answers: ["Ban of red dye #2", "Shortage of cococa powder", "Loss in interest", "Terrible taste"]),
        //Eighteenth Question
        Questions(question: "What does the red color symbolize for Juneteenth?", correctAnswer: "Strength", answers: ["Danger", "Courage", "Anger", "Strength"]),
        //Nineteenth Question
        Questions(question: "What does vinegar do for red velvet?", correctAnswer: "Creates vibrant hue", answers: ["Neutralizes sweetness", "Creates vibrant hue", "Creates softness", "Adds texture"]),
        //Twentieth Question
        Questions(question: "What variant of red velvet is most popular?", correctAnswer: "Cupcake", answers: ["Cake", "Cookie", "Cupcake", "Brownies"]),
    ]
    //Keeping track of certain stuff variables
    @State var score: Int = 0
    @State var currentQuestion: Int = 0
    @State var finish: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                //Background
                Image("wallpaper")
                    .resizable()
                    .frame(width: 900, height: 900)
                    .ignoresSafeArea()
                VStack{
                    //Keeping track of the player score
                    Text("Current Question: \(currentQuestion+1)\nScore: \(score)")
                        .padding()
                        .frame(width:300, alignment: .center)
                        .background(Color(hex:"#84202b"))
                        .foregroundColor(Color(hex:"#dfdac5"))
                        .font(.title)
                        .fontWeight(.semibold)
                        .cornerRadius(10)
                    //The question that is being asked that we pull from the object
                    Text(arrayOfQuestions[currentQuestion].question)
                        .padding()
                        .frame(width:300)
                        .background(Color(hex:"#dfdac5"))
                        .foregroundColor(Color(hex:"#84202b"))
                        .font(.title)
                        .fontWeight(.semibold)
                        .cornerRadius(10)
                    //For loop basically to make all the buttons for the answers of the question
                    ForEach(arrayOfQuestions[currentQuestion].answers.indices, id:\.self){i in
                        Button(action:{
                            if arrayOfQuestions[currentQuestion].answers[i] == arrayOfQuestions[currentQuestion].correctAnswer{
                                //If the button they chose is the same as the answer, they get a point
                                score += 1
                            }
                            if currentQuestion < arrayOfQuestions.count-1{
                                //If they chose a button then the question they're on will change
                                currentQuestion += 1
                            }
                            else{
                                //Once they hit the final question, they finish
                                finish = true
                            }
                        }){
                            //Basically its the answers that will show up
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
                        //Shows the navigation link to the finish page once they finish
                        NavigationLink(destination:{
                            FinishView(finalScore: score, total: arrayOfQuestions.count)
                                .navigationBarBackButtonHidden()
                        }){
                            //Very nice text wow!! Finish button name
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
