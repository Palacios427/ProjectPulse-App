//
//  StatDetail.swift
//  ThingsView
//
//  Created by Alumno on 11/09/24.
//

import SwiftUI

struct StatDetail: View {
    var stat : Stats
    
    var body: some View {
        
        VStack{
            
            if (stat.proceso/stat.maximo) == 1{
                Image("medallaOro")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 130)
            }else if(stat.proceso/stat.maximo) >= 0.7{
                Image("medallaPlata")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 120)
            }else if(stat.proceso/stat.maximo) >= 0.5{
                Image("medallaBronce")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 120)
            }else{
                Image("meddalNo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
            }
            
            HStack {
                Text("\(Int(stat.proceso))")
                Text("/")
                Text("\(Int(stat.maximo))")
            }
            Text(stat.name)
        }
        
        
    }
}

#Preview {
    StatDetail(stat: Stats(name: "Place", proceso: 14, maximo: 15,id: 1))
}
