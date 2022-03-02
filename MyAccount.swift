//
//  MyAccount.swift
//  My Shopper's
//
//  Created by atheer alshihei on 15/07/1443 AH.
//

import SwiftUI

struct MyAccount: View {
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor.init(named: "aaa")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.red]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        
        UITabBar.appearance().backgroundColor = UIColor.init(named: "aaa")
        
    }
    var body: some View {
//        TabView{
        NavigationView{
        VStack{
        HStack{
        Image("im6")
            .resizable()
            .frame(width: 110, height: 140)
            .clipShape(Circle())
            
            ZStack{
                VStack(alignment: .leading, spacing: 5){
                    HStack{
                        NavigationLink(destination: Account()) { Text("Dina")
                                .bold()
                                .font(.title)
                                .foregroundColor(.black)
                        }
                            Spacer()
                        
                    }
                    HStack{
                            Text("Riyadh City - Alnarjes")
                            .foregroundColor(.gray)
                    }
                    
                }
            }
        }.padding()
            
            
            HStack(spacing:50){
        Image(systemName: "shippingbox")
                .font(.largeTitle)
                
                
        Image(systemName: "arrow.counterclockwise")
                         .font(.largeTitle)
            
        Image(systemName: "exclamationmark.circle")
                                 .font(.largeTitle)
                
            }.foregroundColor(Color(UIColor(named: "bbb")!))
        }
        .navigationTitle("Account")
        }
//        .tabItem{
//        Text("Home")
//        Image(systemName: "house")
//    }
//    Text("search").tabItem{
//        Text("search")
//        Image(systemName: "minus.magnifyingglass")
//            .background(Color.red)
//    }
//
//    Text("Cart").tabItem {
//        Text("Cart")
//        Image(systemName: "cart")
//    }
//    Text("Messages").tabItem{
//        Text("Messages")
//        Image(systemName: "message")
//    }
//    Text("Account").tabItem{
//        Text("Account")
//        Image(systemName: "person")
//        Text("person")             }
//
//        }
        
    }
    
   
}

struct MyAccount_Previews: PreviewProvider {
    static var previews: some View {
        MyAccount()
    }
}
