//
//  EgBpdlXiXR.swift
//  App239
//
//  Created by IGOR on 02/11/2023.
//

import SwiftUI

struct EgBpdlXiXR: View {
    
    @StateObject var uxozDHOIPC = rpKWBhIJtT()
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Favorites")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                if uxozDHOIPC.currencies_saved.isEmpty {
                    
                    VStack(alignment: .center, spacing: 10, content: {
                        
                        Text("Empty")
                            .foregroundColor(.white)
                            .font(.system(size: 21, weight: .semibold))
                        
                        Text("You don't have any favorites")
                            .foregroundColor(.gray)
                            .font(.system(size: 13, weight: .regular))
                    })
                    .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        LazyVStack {
                            
                            ForEach(uxozDHOIPC.currencies_saved, id: \.self) { index in
                                
                                HStack(spacing: 12) {
                                    
                                    Text(index)
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
                                    
                                    VStack {
                                        
                                        Text("0.9\(String(format: "%.f", Double(.random(in: 4000...9000))))")
                                            .foregroundColor(.white)
                                            .font(.system(size: 12, weight: .medium))
                                        
                                        Text("Amount: 10")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 10, weight: .regular))
                                    }
                                    
                                    Button(action: {
                                        
                                        uxozDHOIPC.nHuoSichoP(index)
                                        
                                    }, label: {
                                        
                                        Image(systemName: uxozDHOIPC.LnFtnxKtWI(index) ? "star.fill" : "star")
                                            .foregroundColor(uxozDHOIPC.LnFtnxKtWI(index) ? .blue : .gray)
                                            .font(.system(size: 16, weight: .regular))
                                            .padding(.horizontal, 8)
                                    })
                                }
                                .padding(.bottom, 6)
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    EgBpdlXiXR()
}
