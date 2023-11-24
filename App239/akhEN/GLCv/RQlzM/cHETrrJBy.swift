//
//  YvJHctnkRz.swift
//  App239
//
//  Created by IGOR on 02/11/2023.
//

import SwiftUI

struct YvJHctnkRz: View {
    
    @Environment(\.presentationMode) var router
    
//    @Binding var vrprkmtYyi: Bool
    
    var body: some View {

        ZStack {
            
            Color("obg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack {
                    
                    Text("EURUSD")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .regular))
                    
                    HStack {
                        
                        Text("0.9\(String(format: "%.f", Double(.random(in: 4000...9000))))")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                     
                        Text("+\(String(format: "%.1f", Double(.random(in: 2...4))))%")
                            .foregroundColor(.green)
                            .font(.system(size: 12, weight: .semibold))
                            .frame(width: 50, height: 20)
                            .background(RoundedRectangle(cornerRadius: 5).fill(.white.opacity(0.1)))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                
                mxjSJdVcXO(pair: "EURUSD")
                    .disabled(true)
                
                Spacer()
                
                HStack {
                    
                    Button(action: {
                        
                        router.wrappedValue.dismiss()
                        
//                        vrprkmtYyi.toggle()
                        
                    }, label: {
                        
                        Text("Next")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .regular))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.green))
                    })
                    
                    Button(action: {
                        
                        router.wrappedValue.dismiss()
                        
//                        vrprkmtYyi.toggle()

                    }, label: {
                        
                        Text("Previous")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .regular))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.red))
                    })
                }
                .padding()
            }
        }
    }
}

#Preview {
    YvJHctnkRz()
}
