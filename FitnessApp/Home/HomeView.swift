//
//  HomeView.swift
//  FitnessApp
//
//  Created by Sunil Tanwar on 07/02/25.
//  xboxo production

import SwiftUI



struct HomeView: View {
    
    @State var calories: Int = 123
    @State var active: Int = 23
    @State var stand: Int = 8
    
    var mockActivites = [
        Activity(id: 0, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintcolor: .green, amount:"5645"),
        Activity(id: 1, title: "Today ", subtitle: "Goal 12,000", image: "figure.walk", tintcolor: .red, amount:"4645"),
        Activity(id: 2, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintcolor: .blue, amount:"8645"),
        Activity(id: 3, title: "Today run", subtitle: "Goal 12,000", image: "figure.run", tintcolor: .purple, amount:"9745")]
    
    
    
    var body: some View {
        
        ScrollView (showsIndicators: false){
            VStack (alignment: .leading) {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    
                    Spacer()
                    VStack{
                        VStack(alignment: .leading, spacing: 8){
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.red)
                            Text("126 kcal")
                                .bold()
                                .padding(.bottom)
                            
                        }
                        VStack(alignment: .leading, spacing: 8){
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.green)
                            Text("52 mins")
                                .bold()
                                .padding(.bottom)
                            
                        }
                        VStack(alignment: .leading, spacing: 8){
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                            Text("8 hours")
                                .bold()
                            
                        }
                        
                    }
                    
                    Spacer()
                    
                    
                }
                .padding()
                
                HStack{
                    Text("Fitness Activity")
                        .font(.title2)
                    Spacer()
                    Button{
                        print("show more")
                    } label: {
                        Text ("Show more")
                            .padding(.all, 10)
                            .foregroundColor(.white)
                            .background (.blue)
                            .cornerRadius(20)
                        
                    }
                    
                    
                }.padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem (spacing: 20), count: 2))
                {
                    ForEach (mockActivites, id: \.id) { activity in ActivityCard(activity: activity)
                    }
                    
                }
                .padding(.horizontal)
            }
        }
    }
    
    struct HomeView_previews:PreviewProvider{
        static var previews: some View {
            HomeView()
        }
    }
    
}
