//
//  UaBdfxnbeN.swift
//  App239
//
//  Created by IGOR on 01/11/2023.
//

import SwiftUI

struct UaBdfxnbeN: View {
    
    let telegram: URL
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.white.opacity(0.05))
                        .frame(maxWidth: .infinity)
                        .frame(height: 8)
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.white.opacity(0.05))
                        .frame(maxWidth: .infinity)
                        .frame(height: 8)
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color("prim"))
                        .frame(maxWidth: .infinity)
                        .frame(height: 8)
                }
                .padding(.horizontal, 40)
                
                VStack(alignment: .center, spacing: 10, content: {
                    
                    Text("Join and earn")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .bold))
                        .multilineTextAlignment(.center)
                    
                    Text("Join our Telegram group trade with our team")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Image("Join")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Button(action: {
                    
                    UIApplication.shared.open(telegram)
                    
                }, label: {
                    
                    Text("Join")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .regular))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(red: 0/255, green: 163/255, blue: 255/255)))
                })
            }
            .padding()
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        fYyiLhWiFo()
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .font(.system(size: 13, weight: .bold))
                            .padding(10)
                            .background(Circle().fill(Color.white.opacity(0.1)))
                    })
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    UaBdfxnbeN(telegram: URL(string: "h")!)
}
