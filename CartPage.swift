//
//  CartPage.swift
//  PShopper
//
//  Created by atheer alshihei on 15/07/1443 AH.
//

import SwiftUI

struct CartPage: View {
    @State private var amount = 10
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor.init(named: "aaa")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
    @State var isCheckOut:Bool=false
    
    var body: some View {
        VStack {
            NavigationView{
                VStack{
                    List(0..<1) { item in
                        HStack{
                            Image ("t1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 95, height: 95, alignment: .center)
                                .cornerRadius(4)
                                .padding(.vertical)
                            
                            VStack(alignment: .leading, spacing: 19){
                                Text("Dior T-Shirt")
                                    .fontWeight(.semibold)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                                    .foregroundColor(Color (UIColor(named: "bbb")!))
                                
                                Text("Dior")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                
                            }
                            
                            Spacer()
                            VStack{
                                HStack{
                                    Text("$1500")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .padding()
                                }
                                
                                Test()
                            }
                            
                            
                            
                            
                        }
                    }
                    Button(action:{self.isCheckOut.toggle()}) {
                        Text("Go to checkout")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,9)
                            .padding(.horizontal, 50)
                            .background(Color(UIColor(named: "bbb")!))
                            .cornerRadius(99)
                        
                    }.fullScreenCover(isPresented: $isCheckOut, content: {CheckOut()})
                    
                }
                .navigationTitle("My cart")
                .navigationBarTitleDisplayMode(.inline)
                
                
            }
            
            
        }
        
        
        
        
        
        
    }
}

struct CartPage_Previews: PreviewProvider {
    static var previews: some View {
        CartPage()
    }
}
