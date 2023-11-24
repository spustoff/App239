//
//  SFxaXBaaDs.swift
//  App239
//
//  Created by IGOR on 01/11/2023.
//

import SwiftUI

struct SFxaXBaaDs: View {
    
    @StateObject var uxozDHOIPC = rpKWBhIJtT()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Home")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 10, content: {
                    
                    Text("Total amount of portfolios")
                        .foregroundColor(.gray)
                        .font(.system(size: 16, weight: .regular))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack {
                        
                        Text("$\(uxozDHOIPC.amount)")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .semibold))
                        
                        Text("+\(String(format: "%.1f", Double(.random(in: 1...4))))%")
                            .foregroundColor(.green)
                            .font(.system(size: 12, weight: .regular))
                            .frame(width: 50, height: 20)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.05)))
                            .padding(.horizontal)
                    }
                })
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.05)))
                
                VStack(alignment: .leading, spacing: 10, content: {
      
                    Text("Get one of the offered currencies")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .medium))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack {
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                uxozDHOIPC.onVfUfRgCN = true
                            }
                            
                        }, label: {
                            
                            Text("Get currency")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                                .frame(width: 150, height: 40)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.2)))
                        })
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                uxozDHOIPC.QuXkhRLsCM = true
                            }
                            
                        }, label: {
                            
                            Image("currencies")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 35, height: 35)
                        })
                    }
                    
                })
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 150)
                .background(Image("gbg").resizable())
                
                HStack {
                    
                    Text("Portfolios")
                        .foregroundColor(.white)
                        .font(.system(size: 22, weight: .semibold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            uxozDHOIPC.KnrcDJiEsQ = true
                        }
                        
                    }, label: {
                        
                        Image("plus")
                    })
                }
                
                if uxozDHOIPC.portfolios.isEmpty {
                    
                    VStack(spacing: 10) {
                        
                        Text("No portfolios created")
                            .foregroundColor(.white)
                            .font(.system(size: 19, weight: .semibold))
                        
                        Text("Create your portfolio and add assets")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxHeight: .infinity, alignment: .center)
                    .padding()
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        ForEach(uxozDHOIPC.portfolios, id: \.self) { index in
                            
                            NavigationLink(destination: {
                                
                                zmmxJyBkjH(uxozDHOIPC: uxozDHOIPC, portfolio_name: index)
                                    .navigationBarBackButtonHidden()
                                
                            }, label: {
                                
                                HStack(spacing: 12) {
                                    
                                    Image(systemName: "folder.fill")
                                        .foregroundColor(.white)
                                        .font(.system(size: 24, weight: .regular))
                                    
                                    VStack(alignment: .leading, spacing: 5) {
                                        
                                        Text(index)
                                            .foregroundColor(.white)
                                            .font(.system(size: 16, weight: .medium))
                                        
                                        Text("$0")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 14, weight: .regular))
                                    }
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.05)))
                            })
                        }
                    }
                }
            }
            .padding()
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .overlay (
            
            ZStack {
                
                Color.black.opacity(uxozDHOIPC.onVfUfRgCN ? 0.7 : 0)
                    .ignoresSafeArea()
                    .onTapGesture() {
                        
                        withAnimation(.spring()) {
                            
                            uxozDHOIPC.onVfUfRgCN = false
                        }
                    }
                
                VStack {
                    
                    Text("Choose one of the offered currencies")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold))
                        .padding(.bottom)
                    
                    VStack(spacing: 20) {
                        
                        ForEach(uxozDHOIPC.WWVyzeyqUC, id: \.self) { index in
                            
                            Button(action: {
                                
                                uxozDHOIPC.iPkDKpMkbM = index
                                
                            }, label: {
                                
                                HStack(spacing: 12) {
                                    
                                    ZStack {
                                        
                                        Circle()
                                            .stroke(.gray)
                                            .frame(width: 20, height: 20)
                                        
                                        Circle()
                                            .fill(.blue)
                                            .frame(width: 12, height: 12)
                                            .opacity(uxozDHOIPC.iPkDKpMkbM == index ? 1 : 0)
                                    }
                                    
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
                                        uxozDHOIPC.fav_Currencies += 1
                                        
                                    }, label: {
                                        
                                        Image(systemName: uxozDHOIPC.LnFtnxKtWI(index) ? "star.fill" : "star")
                                            .foregroundColor(uxozDHOIPC.LnFtnxKtWI(index) ? .blue : .gray)
                                            .font(.system(size: 16, weight: .regular))
                                            .padding(.horizontal, 8)
                                    })
                                }
                            })
                        }
                        
                        Menu {
                            
                            ForEach(uxozDHOIPC.portfolios, id: \.self) { index in
                            
                                Button(action: {
                                    
                                    uxozDHOIPC.qsfEHMWgGT = index
                                    
                                }, label: {
                                    
                                    HStack {
                                        
                                        Text(index)
                                            
                                        Spacer()
                                        
                                        if uxozDHOIPC.qsfEHMWgGT == index {
                                            
                                            Image(systemName: "xmark")
                                        }
                                    }
                                })
                            }
                            
                        } label: {
                            
                            HStack {
                                
                                Circle()
                                    .fill(.gray.opacity(0.15))
                                    .frame(width: 10, height: 10)
                                
                                Text("Select Portfolio")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15, weight: .regular))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.down")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 13, weight: .regular))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                        }
                    }
                    
                    Button(action: {
                        
                        uxozDHOIPC.KcRFpQKGos(completion: {
                            
                            uxozDHOIPC.qsfEHMWgGT = ""
                            uxozDHOIPC.iPkDKpMkbM = ""
                            
                            withAnimation(.spring()) {
                                
                                uxozDHOIPC.onVfUfRgCN = false
                            }
                        })
                        
                    }, label: {
                        
                        Text("Save")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim")))
                            .padding(.top, 25)
                        
                    })
                    .opacity(uxozDHOIPC.iPkDKpMkbM.isEmpty || uxozDHOIPC.qsfEHMWgGT.isEmpty ? 0.5 : 1)
                    .disabled(uxozDHOIPC.iPkDKpMkbM.isEmpty || uxozDHOIPC.qsfEHMWgGT.isEmpty ? true : false)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("obg")).ignoresSafeArea())
                .offset(y: uxozDHOIPC.onVfUfRgCN ? 0 : UIScreen.main.bounds.height)
                .frame(maxHeight: .infinity, alignment: .bottom)
                
            }
        )
        .overlay (
            
            ZStack {
                
                Color.black.opacity(uxozDHOIPC.QuXkhRLsCM ? 0.7 : 0)
                    .ignoresSafeArea()
                    .onTapGesture{
                        
                        withAnimation(.spring()) {
                            
                            uxozDHOIPC.QuXkhRLsCM = false
                        }
                    }
                
                VStack {
                    
                    Text("Filters")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("Here you can select the parameters by which you will be offered")
                        .foregroundColor(.gray)
                        .font(.system(size: 12, weight: .regular))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    VStack(spacing: 20) {
                        
                        ForEach(uxozDHOIPC.DHNkTBCgMM, id: \.self) { index in
                            
                            Button(action: {
                                
                                uxozDHOIPC.pMDKtYnxvg = index
                                
                            }, label: {
                                
                                HStack(spacing: 12) {
                                    
                                    ZStack {
                                        
                                        Circle()
                                            .stroke(.gray)
                                            .frame(width: 20, height: 20)
                                        
                                        Circle()
                                            .fill(.blue)
                                            .frame(width: 12, height: 12)
                                            .opacity(uxozDHOIPC.pMDKtYnxvg == index ? 1 : 0)
                                    }
                                    
                                    Text(index)
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Spacer()
  
                                }
                            })
                        }
                    }
                    
                    Button(action: {
                        
                        
                        withAnimation(.spring()) {
                            
                            uxozDHOIPC.QuXkhRLsCM = false
                        }
                        
                    }, label: {
                        
                        Text("Save")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim")))
                        
                    })
                    .padding(.top, 25)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("obg")).ignoresSafeArea())
                .offset(y: uxozDHOIPC.QuXkhRLsCM ? 0 : UIScreen.main.bounds.height)
                .frame(maxHeight: .infinity, alignment: .bottom)
                
            }
        )
        .overlay (
            
            ZStack {
                
                Color.black.opacity(uxozDHOIPC.KnrcDJiEsQ ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            uxozDHOIPC.KnrcDJiEsQ = false
                        }
                    }
                
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                uxozDHOIPC.KnrcDJiEsQ = false
                            }
                            
                        }, label: {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .regular))
                        })
                    }
                    
                    Text("Creating a portfolio")
                        .foregroundColor(.black)
                        .font(.system(size: 24, weight: .semibold))
                        .padding()
                    
                    HStack {
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Name")
                                .foregroundColor(uxozDHOIPC.yTMdXJjjso.isEmpty ? .gray : .black)
                                .font(.system(size: 13, weight: .medium))
                                .opacity(uxozDHOIPC.yTMdXJjjso.isEmpty ? 1 : 0)
                            
                            TextField("", text: $uxozDHOIPC.yTMdXJjjso)
                                .foregroundColor(.black)
                                .font(.system(size: 13, weight: .medium))
                        })
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .padding(.bottom)
                    
                    Button(action: {
                        
                        uxozDHOIPC.portfolio_numer += 1
                        
                        uxozDHOIPC.portfolios.append(uxozDHOIPC.yTMdXJjjso)
                        
                        uxozDHOIPC.yTMdXJjjso.removeAll()
                        
                        withAnimation(.spring()) {
                            
                            uxozDHOIPC.KnrcDJiEsQ = false
                        }
                        
                    }, label: {
                        
                        Text("Create")
                            .foregroundColor(.blue)
                            .font(.system(size: 18, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .padding(.top, 25)
                    })
                    .opacity(uxozDHOIPC.yTMdXJjjso.isEmpty ? 0.5 : 1)
                    .disabled(uxozDHOIPC.yTMdXJjjso.isEmpty ? true : false)
                    
                    Button(action: {
                        
                        
                        withAnimation(.spring()) {
                            
                            uxozDHOIPC.KnrcDJiEsQ = false
                        }
                        
                    }, label: {
                        
                        Text("Cancel")
                            .foregroundColor(.blue)
                            .font(.system(size: 18, weight: .regular))
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                        
                    })
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("bg2")))
                .padding()
                .offset(y: uxozDHOIPC.KnrcDJiEsQ == true ? 0 : UIScreen.main.bounds.height)
            }
        )
    }
}

#Preview {
    SFxaXBaaDs()
}
