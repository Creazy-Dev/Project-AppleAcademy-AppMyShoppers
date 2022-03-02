//
//  HomePage.swift
//  PShopper
//
//  Created by atheer alshihei on 14/07/1443 AH.
//

import SwiftUI

struct HomePage: View {
    
    private var numberOfImage = 4
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor.init(named: "aaa")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        
        UITabBar.appearance().backgroundColor = UIColor.init(named: "aaa")
        
    }
    
    @State var isSowingShoppername:Bool=false
    
    var body: some View {
        
        TabView{
            NavigationView{
                
                VStack {
                    Spacer()
                    VStack{
                    photo()
                     .frame(width:410,height:180)
                        .cornerRadius(20)
                        HStack{
                   Text("Personal Shoppers")
                            .font(.title3)
                            
                        }.padding(.trailing,200)
//                        .foregroundColor(.black)
//                        .frame(width: 200, height:40)
                        //.padding(.leading)
                    }//.padding(.trailing,170)
                    VStack(alignment: .leading) {
                        // Spacer(minLength: 200)
                        
                        HStack {
                            
                            VStack(){
                                Image("im6")
                                    .resizable()
                                    .frame(width: 90, height: 100)
                                 //   .cornerRadius(40)
                                    .clipShape(Circle())
                                Text("Reema")
                                    .font(.title3)
                                HStack{
                                    Image(systemName: "mappin.circle")
                                        .font(.caption)
                                        .foregroundColor(.brown)
                                Text("Riyadh")
                                    .font(.caption)
                                    .foregroundColor(.brown)
                                    
                                }
                                HStack(spacing: -3){
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                }.foregroundColor(Color(UIColor(named: "aaa")!))
                                
                                
                            }.padding()
                            
                            VStack(){
                                
                                
                                Image("im1")
                                    .resizable()
                                    .frame(width: 90, height: 100)
                                //    .cornerRadius(40)
                                    .clipShape(Circle())
                                
                                Button("Mohammed"){
                                    isSowingShoppername
                                       .toggle()
                                }
                                .fullScreenCover(isPresented: $isSowingShoppername)
                                {ShopperPro()}
                                    .font(.title3)
                                    .foregroundColor(.black)
                                
                                HStack{
                                    Image(systemName: "mappin.circle")
                                        .font(.caption)
                                        .foregroundColor(.brown)
                                Text("Riyadh")
                                    .font(.caption)
                                    .foregroundColor(.brown)
                                    
                                }
                                HStack(spacing: -3){
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                }.foregroundColor(Color(UIColor(named: "aaa")!))
                                
                                
                                
                                
                            } .padding()
                            
                            VStack(){
                                Image("im5")
                                    .resizable()
                                    .frame(width: 90, height: 100)
                                 //   .cornerRadius(40)
                                    .clipShape(Circle())
                                Text("Raghad")
                                    .font(.title3)
                                
                                HStack{
                                    Image(systemName: "mappin.circle")
                                        .font(.caption)
                                        .foregroundColor(.brown)
                                Text("Riyadh")
                                    .font(.caption)
                                    .foregroundColor(.brown)
                                    
                                }
                                HStack(spacing: -3){
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                }.foregroundColor(Color(UIColor(named: "aaa")!))
                                
                            }.padding()
                                
                            
                            
                            
                        }
                        
                        HStack {
                            VStack(){
                                Image("image1")
                                    .resizable()
                                    .frame(width: 90, height: 100)
                             //       .cornerRadius(40)
                                    .clipShape(Circle())
                                Text("Seef")
                                    .font(.title3)
                                
                                HStack{
                                    Image(systemName: "mappin.circle")
                                        .font(.caption)
                                        .foregroundColor(.brown)
                                Text("Riyadh")
                                    .font(.caption)
                                    .foregroundColor(.brown)
                                    
                                }
                                HStack(spacing: -3){
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                }.foregroundColor(Color(UIColor(named: "aaa")!))
                                
                                
                                
                                
                            }.padding()
                            .padding(.bottom,20)
                            
                            VStack(){
                                Image("Image-1")
                                    .resizable()
                                    .frame(width: 90, height: 100)
                                  //  .cornerRadius(40)
                                    .clipShape(Circle())
                                Text("Mohammed")
                                    .font(.title3)
                                
                                HStack{
                                    Image(systemName: "mappin.circle")
                                        .font(.caption)
                                        .foregroundColor(.brown)
                                Text("Riyadh")
                                    .font(.caption)
                                    .foregroundColor(.brown)
                                    
                                }
                                HStack(spacing: -3){
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                }.foregroundColor(Color(UIColor(named: "aaa")!))
                                
                                
                                
                                
                            }.padding()
                            .padding(.bottom,20)
                            
                            VStack(){
                                Image("im3")
                                    .resizable()
                                    .frame(width: 90, height: 100)
                                 //   .cornerRadius(40)
                                    .clipShape(Circle())
                                Text("Abdullah")
                                    .font(.title3)
                                
                                HStack{
                                    Image(systemName: "mappin.circle")
                                        .font(.caption)
                                        .foregroundColor(.brown)
                                Text("Riyadh")
                                    .font(.caption)
                                    .foregroundColor(.brown)
                                    
                                }
                                HStack(spacing: -3){
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                }.foregroundColor(Color(UIColor(named: "aaa")!))
                                
                            }.padding()
                            .padding(.bottom,20)
                            
                            
                            
                            
                        }
                        
                        
                    }
                    .toolbar { ToolbarItem(placement: .principal){
                            Image("b")
                        
                            .resizable()
                      
                            .frame(width:300,height:300)
                        //    .cornerRadius(20)
                       //     .background(Color(UIColor(named: "aaa")!))
                            .padding(.trailing,160)
                            .padding( .top, 30)
                         
                    }
                        
                    }
                }
            }
            
            
                .tabItem{
                Text("Home")
                Image(systemName: "house")
            }
            SearchPage().tabItem{
                Text("search")
                Image(systemName: "minus.magnifyingglass")
                    //.background(Color.red)
            }

            CartPage().tabItem {
                Text("Cart")
                Image(systemName: "cart")
            }
            ChatChat().tabItem{
                Text("Messages")
                Image(systemName: "message")
            }
            MyAccount().tabItem{
                Text("Account")
                Image(systemName: "person")
                Text("person")             }
            
            
            
        }
        
    }
}
struct FirstView: View {
    var body: some View {
        
            NavigationLink(destination: SearchPage()) {
                Text("Go to...")
            }
            
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
