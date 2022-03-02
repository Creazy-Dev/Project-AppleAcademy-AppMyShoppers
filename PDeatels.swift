//
//  PDeatels.swift
//  PShopper
//
//  Created by atheer alshihei on 15/07/1443 AH.
//

import SwiftUI

struct PDeatels: View {
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor.init(named: "aaa")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
    
    @State var isCartPage:Bool=false
    
    var body: some View {
        NavigationView{
        VStack {
                ScrollView{
                    HStack{
                        Image ("t1")
                            .resizable()
                            .scaledToFit()
                           // .frame(width: 300, height: 250)
                            .cornerRadius(4)
                            .padding()
                    }
                    
                    VStack{
                      HStack( spacing: -4){
                      Text("Dior T-Shirt")
                        Spacer()
                      Image(systemName: "star.fill")
                              .foregroundColor(Color(UIColor(named: "bbb")!))
                          Image(systemName: "star.fill")
                              .foregroundColor(Color(UIColor(named: "bbb")!))
                          Image(systemName: "star.fill")
                              .foregroundColor(Color(UIColor(named: "bbb")!))
                          Image(systemName: "star.fill")
                              .foregroundColor(Color(UIColor(named: "bbb")!))
                          Image(systemName: "star.fill")
                              .foregroundColor(Color(UIColor(named: "bbb")!))
                    }
                        HStack{
                            
                            Text("$999")
                            Spacer()
                            
                        }.padding(4)
                        HStack{
                            Text("Size")
                            Spacer()
                       sizes()
                            
                        }.padding(4)
                        HStack{
                            Text("Discription")
                            Spacer()
                        }.padding(4)
                        HStack{
                            Text("A more accurate description")
                            Spacer()
                        }
                    }.padding()
                
        }
       //     HStack{
//            Button(action:{}) {
//                Text("Wishlist")
//                    .font(.title)
//                    .fontWeight(.semibold)
//                    .foregroundColor(.white)
//                    .padding()
//                    .padding(.horizontal)
//                    .background(.brown)
//                    .cornerRadius(99)
//                    .foregroundColor(Color(UIColor(named: "STAR")!))
//
//            }
            
            Button(action:{self.isCartPage.toggle()}) {
                Text("Go to Cart")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.vertical,9)
                    .padding(.horizontal, 50)
                    .background(Color(UIColor(named: "bbb")!))
                    .cornerRadius(99)
            }.fullScreenCover(isPresented: $isCartPage, content:
            {CartPage()})
            
            
//                Button(action:{}) {
//                    Text("Add To Cart")
//                        .font(.title)
//                        .fontWeight(.semibold)
//                        .foregroundColor(.white)
//                        .padding(.vertical,9)
//                        .padding(.horizontal,70)
//                        .background(Color(UIColor(named: "bbb")!))
//                        .cornerRadius(99)
//
//                }
   //         }

      
        }
        
        .navigationTitle("Product details")
        .navigationBarTitleDisplayMode(.inline)
        
        
    }
        
        
        
    }
}

struct PDeatels_Previews: PreviewProvider {
    static var previews: some View {
        PDeatels()
    }
}
