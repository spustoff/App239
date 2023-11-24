//
//  Hjlrqrstgz.swift
//  App239
//
//  Created by IGOR on 02/11/2023.
//

import SwiftUI

struct Hjlrqrstgz: View {
    
    @Binding var kHxEIDPbRl: Tab
    
    var body: some View {
        
        HStack {
            
            ForEach(Tab.allCases, id: \.self) { index in
                
                Button(action: {
                    
                    kHxEIDPbRl = index
                    
                }, label: {
                    
                    VStack(alignment: .center, spacing: 8, content: {
                        
                        Image(index.rawValue)
                            .renderingMode(.template)
                            .foregroundColor(kHxEIDPbRl == index ? Color("prim") : Color.gray)
                            .frame(height: 24)
                        
                        Text(index.rawValue)
                            .foregroundColor(kHxEIDPbRl == index ? Color("prim") : Color.gray)
                            .font(.system(size: 12, weight: .regular))
                        
                    })
                    .frame(maxWidth: .infinity)
                })
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .padding(.top, 14)
        .padding(.bottom, 20)
        .background(Color("obg"))
    }
}

enum Tab: String, CaseIterable {
    
    case SFxaXBaaDs = "Home"
    
    case Favorites = "Favorites"
    
    case Achievements = "Achievs"
    
    case History = "History"
    
    case Settings = "Settings"
}


#Preview {
    OqlxKLUWvU()
}
