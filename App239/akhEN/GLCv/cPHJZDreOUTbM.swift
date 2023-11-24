//
//  rpKWBhIJtT.swift
//  App239
//
//  Created by IGOR on 01/11/2023.
//

import SwiftUI
import Alamofire
import CoreData

final class rpKWBhIJtT: ObservableObject {

    @AppStorage("amount") var amount: Int = 0
    @AppStorage("portfolio_numer") var portfolio_numer: Int = 0
    @AppStorage("fav_Currencies") var fav_Currencies: Int = 0

    @Published var KnrcDJiEsQ: Bool = false
    @Published var onVfUfRgCN: Bool = false
    @Published var QuXkhRLsCM: Bool = false
    @Published var dSzRsdaHVw: String = ""
    
    @Published var qsfEHMWgGT: String = ""

    @Published var WWVyzeyqUC: [String] = ["EURUSD", "USDCHY", "EURRUB"]
    @Published var iPkDKpMkbM = "EURUSD"
    @Published var DHNkTBCgMM: [String] = ["Big risk", "Stable currencies", "Long-term earnings"]
    @Published var pMDKtYnxvg = ""
    
    @Published var yTMdXJjjso: String = ""
    @AppStorage("portAmount") var portAmount: String = ""
    @AppStorage("portfolios") var portfolios: [String] = []
    
    @Published var BuzmJMBlVC: [CurrencyModel] = []
    
    func KcRFpQKGos(completion: @escaping () -> (Void)) {
        
        CoreDataStack.shared.modelName = "CurrencyModel"
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let trans = NSEntityDescription.insertNewObject(forEntityName: "CurrencyModel", into: context) as! CurrencyModel
        
        trans.name = iPkDKpMkbM
        trans.portfolio_name = qsfEHMWgGT
        trans.amount = 0
        
        CoreDataStack.shared.jisMMuYtWT()
        
        completion()
    }
    
    func TChIDrCboi(portfolio_name: String) {
        
        CoreDataStack.shared.modelName = "CurrencyModel"
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<CurrencyModel>(entityName: "CurrencyModel")

        do {
            
            let branch = try context.fetch(fetchRequest)
            
            self.BuzmJMBlVC = branch.filter{$0.portfolio_name == portfolio_name}
            
        } catch let error as NSError {
            
            print("Error fetching persons: \(error), \(error.userInfo)")
            
            self.BuzmJMBlVC = []
        }
    }
    
    @AppStorage("currencies_saved") var currencies_saved: [String] = []
    
    func nHuoSichoP(_ currency: String) {
        
        if currencies_saved.contains(currency) {
            
            if let indexer = currencies_saved.firstIndex(of: currency) {
                
                currencies_saved.remove(at: indexer)
                fav_Currencies -= 1
            }
            
        } else {
            
            currencies_saved.append(currency)
            fav_Currencies += 1

        }
    }
    
    func LnFtnxKtWI(_ currency: String) -> Bool {
        
        return currencies_saved.contains(currency) ? true : false
    }
}

