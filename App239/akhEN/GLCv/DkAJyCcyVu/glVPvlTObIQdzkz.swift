//
//  zmmxJyBkjH.swift
//  App239
//
//  Created by IGOR on 02/11/2023.
//

import SwiftUI

struct zmmxJyBkjH: View {
    
    @StateObject var uxozDHOIPC: rpKWBhIJtT
    
    let portfolio_name: String
    
    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text(portfolio_name)
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .medium))
                    
                    HStack {
                        
                        Button(action: {
                            
                            router.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "chevron.left")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 15, weight: .regular))
                                
                                Text("Back")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 15, weight: .regular))
                            }
                        })
                        
                        Spacer()
                    }
                }
                .padding()
                
                VStack(spacing: 10) {
                    
                    Text("Amount in this portfolio")
                        .foregroundColor(.gray)
                        .font(.system(size: 16, weight: .regular))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("$0")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .semibold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
                .padding()
                
                VStack(spacing: 10) {
                    
                    Text("Available currencies")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    if uxozDHOIPC.BuzmJMBlVC.isEmpty {
                        
                        VStack(alignment: .center, spacing: 10, content: {
                            
                            Text("Empty")
                                .foregroundColor(.white)
                        })
                        .frame(maxHeight: .infinity, alignment: .center)
                        
                    } else {
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            
                            LazyVStack {
                                
                                ForEach(uxozDHOIPC.BuzmJMBlVC, id: \.self) { index in
                                    
                                    HStack(spacing: 12) {
                                        
                                        ZStack {
                                            
                                            Circle()
                                                .stroke(.gray)
                                                .frame(width: 20, height: 20)
                                            
                                            Circle()
                                                .fill(.blue)
                                                .frame(width: 12, height: 12)
                                        }
                                        
                                        Text(index.name ?? "")
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
                                            
                                            uxozDHOIPC.nHuoSichoP(index.name ?? "")
                                            
                                        }, label: {
                                            
                                            Image(systemName: uxozDHOIPC.LnFtnxKtWI(index.name ?? "") ? "star.fill" : "star")
                                                .foregroundColor(uxozDHOIPC.LnFtnxKtWI(index.name ?? "") ? .blue : .gray)
                                                .font(.system(size: 16, weight: .regular))
                                                .padding(.horizontal, 8)
                                        })
                                    }
                                }
                            }
                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.1)))
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .onAppear {
            
            uxozDHOIPC.TChIDrCboi(portfolio_name: portfolio_name)
        }
    }
}

#Preview {
    zmmxJyBkjH(uxozDHOIPC: rpKWBhIJtT(), portfolio_name: "padsojdas")
}
