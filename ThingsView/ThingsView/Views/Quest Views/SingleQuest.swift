//
//  SingleQuest.swift
//  ThingsView
//
//  Created by Alumno on 11/09/24.
//

import SwiftUI

struct SingleQuest: View {
    
    var thisQuest : Quest
    @State var showAlert = false
    @ObservedObject var profile: Profile
    @EnvironmentObject var profileViewModel: ProfileViewModel
    @EnvironmentObject var questViewModel: QuestViewModel
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 350, height: 150.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.007, brightness: 0.797)/*@END_MENU_TOKEN@*/)
                .cornerRadius(30.0)
                .shadow(radius: 5)
                .onTapGesture {
                    if(thisQuest.owner == "NONE"){
                        showAlert = true
                    }
                }
            
            RoundedRectangle(cornerRadius: 10.0)
                .frame(width: 300.0, height: 4)
                .offset(y:50)
                .foregroundColor(.white)
            
            ProgressView(value: thisQuest.completion, total: 100)
                .progressViewStyle(LinearProgressViewStyle())
                .offset(x: 0, y: 50)
                .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: 10.0)
                .tint(.green)
            
            if(thisQuest.completed){
                ZStack{
                    Circle()
                        .stroke(Color.black)
                        .fill(Color.green)
                        .frame(width: 50)
                        .offset(x: 130, y: -5)
                    Image(systemName: "checkmark")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .offset(x: 130, y: -5)
                    
                }
            }
            else{
                Circle()
                    .stroke(Color.black)
                    .frame(width: 50)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.007, brightness: 0.797)/*@END_MENU_TOKEN@*/)
                    .offset(x: 130, y: -5)
                    
            }
            
            VStack(alignment: .leading){
                HStack{
                    Text(thisQuest.name)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .offset(x: -20, y:10)
                        .fontWeight(.bold)
                        .lineLimit(1)
                    
                    Text("Lv." + String(thisQuest.level))
                        .offset(x:40, y:10)
                }
                Text("Owner: " + thisQuest.owner)
                    .font(.system(size:8))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.leading)
                    .offset(x:-15, y:15)
                    .lineLimit(1)
                
                Text(thisQuest.desc)
                    .font(.system(size:12))
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                    .offset(x:-30 , y:-20)
                    .frame(width: 270, height : 100)
                    .lineLimit(4)
                
                
            }
            
        }
        .alert(isPresented: $showAlert){
            Alert(
                    title: Text("Take the Quest"),
                    message: Text("Do you want to take this quest?"),
                    primaryButton: .default(Text("Yes")) {
                        thisQuest.owner = profile.name
                        questViewModel.save()

                        },
                    secondaryButton: .cancel(Text("No"))
                )
        }
    }
}
