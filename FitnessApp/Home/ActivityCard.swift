//
//  ActivityCard.swift
//  FitnessApp
//
//  Created by Sunil Tanwar on 07/02/25.
//

import SwiftUI

struct Activity {
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let tintcolor:Color
    let amount: String
}

struct ActivityCard: View {
    
    @State var activity: Activity
    var body: some View {
        ZStack{
            Color (uiColor: .systemGray6)
                .cornerRadius(15)
            VStack{
                HStack(alignment: .top)
                {
                    VStack (alignment: .leading, spacing: 8)
                    {
                        
                        Text(activity.title)
                        Text(activity.subtitle)
                            .font(.caption)
                        
                    }
                    
                    Spacer()
                    Image (systemName: activity.image)
                        .foregroundColor(activity.tintcolor)
                    
                }
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }

    }
}

#Preview {
    ActivityCard(activity: Activity(id: 0, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintcolor: .green, amount:"9645"))
}
