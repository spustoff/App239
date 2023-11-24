//
//  yCXAgsAXvu.swift
//  App239
//
//  Created by IGOR on 01/11/2023.
//

import SwiftUI

struct yCXAgsAXvu: View {
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color("prim"))
                        .frame(maxWidth: .infinity)
                        .frame(height: 8)
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.white.opacity(0.05))
                        .frame(maxWidth: .infinity)
                        .frame(height: 8)
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.white.opacity(0.05))
                        .frame(maxWidth: .infinity)
                        .frame(height: 8)
                }
                .padding(.horizontal, 40)
                
                VStack(alignment: .center, spacing: 10, content: {
                    
                    Text("Manage the received assets")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .bold))
                        .multilineTextAlignment(.center)
                    
                    Text("Receive everything according to your requests and distribute it into portfolios")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Image("R1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                NavigationLink(destination: {
                    
                    UBbFdQNfQD()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .regular))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim")))
                })
            }
            .padding()
        }
    }
}

#Preview {
    yCXAgsAXvu()
}
