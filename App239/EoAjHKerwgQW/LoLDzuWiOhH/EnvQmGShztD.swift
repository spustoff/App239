//
//  TobayaCKwv.swift
//  App239
//
//  Created by IGOR on 01/11/2023.
//

import SwiftUI

struct TobayaCKwv: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("logo_big")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            
            ProgressView()
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding()
        }
    }
}

#Preview {
    TobayaCKwv()
}
