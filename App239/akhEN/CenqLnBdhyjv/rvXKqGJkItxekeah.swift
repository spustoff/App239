//
//  PlBVorvCvc.swift
//  App239
//
//  Created by IGOR on 02/11/2023.
//

import SwiftUI

struct PlBVorvCvc: View {
    
    @AppStorage("portfolio_numer") var portfolio_numer: Int = 0
    @AppStorage("fav_Currencies") var fav_Currencies: Int = 0
    @AppStorage("level_completed") var level_completed: Int = 0
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Achievements")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        
                        HStack {
                            
                            Text("Level 1")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                            
                            Spacer()
                            
                            Text("Completed: \(level_completed)/3")
                                .foregroundColor(.blue)
                                .font(.system(size: 12, weight: .regular))
                                .padding(6)
                                .background(RoundedRectangle(cornerRadius: 5).fill(.blue.opacity(0.3)))
                        }
                        
                        HStack(spacing: 10) {
                            
                            ZStack {
                                
                                Circle()
                                    .fill(.white.opacity(0.1))
                                    .frame(width: 10, height: 10)
                                
                                Circle()
                                    .fill(.green)
                                    .frame(width: 10, height: 10)
                                    .opacity(portfolio_numer >= 3 ? 1 : 0)
                            }
                            
                            Text("Create 5 portfolios")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Spacer()
                        }
                        .padding(9)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.08)))
                        
                        HStack(spacing: 10) {
                            
                            ZStack {
                                
                                Circle()
                                    .fill(.white.opacity(0.1))
                                    .frame(width: 10, height: 10)
                                
                                Circle()
                                    .fill(.green)
                                    .frame(width: 10, height: 10)
                                    .opacity(fav_Currencies >= 3 ? 1 : 0)
                            }
                            
                            Text("Add to favorites 3 currencies")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Spacer()
                        }
                        .padding(9)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.08)))
                        
                        HStack(spacing: 10) {
                            
                            ZStack {
                                
                                Circle()
                                    .fill(.white.opacity(0.1))
                                    .frame(width: 10, height: 10)
                                
                                Circle()
                                    .fill(.green)
                                    .frame(width: 10, height: 10)
                                    .opacity(0)
                            }
                            
                            Text("Have $30,000.00 currencies")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                            
                            Spacer()
                        }
                        .padding(9)
                        .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.08)))
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("obg")))
                    
                    VStack {
                        
                        HStack {
                            
                            Text("Level 2")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                            
                            Spacer()
                            
                            Text("Lock")
                                .foregroundColor(.blue)
                                .font(.system(size: 12, weight: .regular))
                                .padding(6)
                                .background(RoundedRectangle(cornerRadius: 5).fill(.blue.opacity(0.3)))
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("obg")))
                    
                    VStack {
                        
                        HStack {
                            
                            Text("Level 3")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                            
                            Spacer()
                            
                            Text("Lock")
                                .foregroundColor(.blue)
                                .font(.system(size: 12, weight: .regular))
                                .padding(6)
                                .background(RoundedRectangle(cornerRadius: 5).fill(.blue.opacity(0.3)))
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("obg")))
                    
                    VStack {
                        
                        HStack {
                            
                            Text("Level 4")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                            
                            Spacer()
                            
                            Text("Lock")
                                .foregroundColor(.blue)
                                .font(.system(size: 12, weight: .regular))
                                .padding(6)
                                .background(RoundedRectangle(cornerRadius: 5).fill(.blue.opacity(0.3)))
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("obg")))
                    
                }
            }
            .padding()
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
    
    func GFiCoqKLeB() {
        
        if portfolio_numer >= 5 {
            
            level_completed += 1
        }
        
        if fav_Currencies >= 3 {
            
            level_completed += 1
        }
    }
}

#Preview {
    PlBVorvCvc()
}
