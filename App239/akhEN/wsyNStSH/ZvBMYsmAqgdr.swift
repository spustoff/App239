//
//  NzclsSJxuD.swift
//  App239
//
//  Created by IGOR on 02/11/2023.
//

import SwiftUI
import StoreKit
import CoreData

struct NzclsSJxuD: View {
    
    @AppStorage("budget") var budget: Int = 50000
    @AppStorage("income") var income: Int = 0
    @AppStorage("nfac") var nfac: Int = 0
    @AppStorage("level") var level: Int = 1
    @AppStorage("portfolio_numer") var portfolio_numer: Int = 0
    @AppStorage("fav_Currencies") var fav_Currencies: Int = 0
    @AppStorage("level_completed") var level_completed: Int = 0
    @AppStorage("currencies_saved") var currencies_saved: [String] = []
    @AppStorage("portfolios") var portfolios: [String] = []
    @State var sORXYPGpBB: Bool = false
    @State var NeOEfvInpR: Bool = true

    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Settings")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Button(action: {
                        
                        SKStoreReviewController.requestReview()
                        
                    }, label: {
                        
                        HStack {
                            
                            Image(systemName: "star.fill")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(RoundedRectangle(cornerRadius: 5).fill(Color("prim")))
                            
                            Text("Rate app")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.system(size: 18, weight: .regular))
                        }
                    })
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color("obg")))
                    
                    Button(action: {
                        
                        guard let url = URL(string: rnWZyjoOVX("aHR0cHM6Ly9kb2NzLmdvb2dsZS5jb20vZG9jdW1lbnQvZC8xcTVScUg4QkJaRTNTSXA1bzZ0R2NIelpTSTBFVDA4UnpFXzNIanU5dW0wYy9lZGl0P3VzcD1zaGFyaW5n")) else { return }
                        
                        UIApplication.shared.open(url)
                        
                    }, label: {
                        
                        HStack {
                            
                            Image(systemName: "bubble.right.fill")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(RoundedRectangle(cornerRadius: 5).fill(Color("prim")))
                            
                            Text("Usage Policy")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.system(size: 18, weight: .regular))
                        }
                    })
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color("obg")))
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            sORXYPGpBB = true
                        }
                        
                    }, label: {
                        
                        HStack {
                            
                            Image(systemName: "arrow.triangle.2.circlepath")
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(RoundedRectangle(cornerRadius: 5).fill(Color.red))
                            
                            Text("Reset progress")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .regular))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.system(size: 18, weight: .medium))
                        }
                    })
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).fill(Color("obg")))
                }
                .padding()
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .overlay (
            
            ZStack {
                
                Color.black.opacity(sORXYPGpBB ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            sORXYPGpBB = false
                        }
                    }
                
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                sORXYPGpBB = false
                            }
                            
                        }, label: {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .regular))
                        })
                    }
                    
                    Text("Reset progress")
                        .foregroundColor(.black)
                        .font(.system(size: 24, weight: .semibold))
                        .padding()
                    
                    Text("Your entire progress will be permanently deleted")
                        .foregroundColor(.black)
                        .font(.system(size: 16, weight: .regular))
                        .multilineTextAlignment(.center)
                    
                    Button(action: {
                        
                        budget = 50000
                        income = 0
                        nfac = 0
                        level = 1
                        portfolio_numer = 0
                        fav_Currencies = 0
                        level_completed = 0
                        currencies_saved.removeAll()
                        portfolios.removeAll()
                        
                        NeOEfvInpR = true
                        
                        CoreDataStack.shared.WCTFWGEyDg()
                        
                        withAnimation(.spring()) {
                            
                            sORXYPGpBB = false
                        }
                        
                    }, label: {
                        
                        Text("Reset")
                            .foregroundColor(.red)
                            .font(.system(size: 18, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                        
                    })
                    .padding(.top, 25)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.7)))
                .padding()
                .offset(y: sORXYPGpBB ? 0 : UIScreen.main.bounds.height)
            }
        )
    }
}

#Preview {
    NzclsSJxuD()
}
