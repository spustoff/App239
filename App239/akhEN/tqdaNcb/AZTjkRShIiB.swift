//
//  EbfYfnrGga.swift
//  App239
//
//  Created by IGOR on 02/11/2023.
//

import SwiftUI

struct EbfYfnrGga: View {
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("History")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 10) {
                    
                    Text("Empty")
                        .foregroundColor(.white)
                        .font(.system(size: 19, weight: .semibold))
                    
                    Text("You haven't added any new currencies yet")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .multilineTextAlignment(.center)
                }
                .frame(maxHeight: .infinity, alignment: .center)
            }
            .padding()
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    EbfYfnrGga()
}
