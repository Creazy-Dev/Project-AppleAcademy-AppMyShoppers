//
//  CheckOut.swift
//  PShopper
//
//  Created by atheer alshihei on 15/07/1443 AH.
//

import SwiftUI

struct CheckOut: View {
    
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor.init(named: "aaa")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
    
    @State var isComplet:Bool=false
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                VStack(alignment: .leading){
                        Text("Cart ( 1 )")
                    .padding(.leading,40)
                    
                    HStack( spacing:-4){
                        Image("t1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .cornerRadius(4)
                            .padding(.leading)
                        Spacer()
                        Image(systemName: "arrow.right")
                        .foregroundColor(Color(UIColor(named: "bbb")!)) }
                    
                    Text("X1")
                        .padding(.leading,60)
                    
                    Divider()
                    
                    VStack(alignment: .leading){
                        Text("Shipping Address")
                            .foregroundColor(Color(UIColor(named: "bbb")!))
                        Spacer()
                        Text("Atheer alshehri")
                            .font(.callout)
                        
                        
                    }.padding(4)
                    
                    
                    
                    VStack(alignment: .leading){
                        Text("riyadh")
                        Text("exit 20")
                        Text("Riyadh,")
                        Text("********")
                        Text("Saudi Arabia")
                        Text("966*********")
                        
                    }.font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(4)
                    
                    Divider()
                    
                    
                    VStack{
                        
                        VStack(alignment: .leading){
                            
                            Text("Payment Method")
                                .foregroundColor(Color(UIColor(named: "bbb")!))
                            
                                .padding(4)
                            
                            HStack{
                                Text("")
                                Spacer()
//                                Image(systemName: "arrow.right")
//                                    .foregroundColor(Color(UIColor(named: "bbb")!))
                                
        NavigationLink(destination: CreditCard()) { Image(systemName: "arrow.right")}
        .foregroundColor(Color(UIColor(named: "bbb")!))
                            }
                            
                            
                        //    Text("Payment by credit card")
                     //       Image(systemName: creditcard )
                            Text("Payment by credit card \n \nPaiement when recieving")
                            
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .padding(4)
                            
                            
                            
                            Divider()
                            
                            
                            Text("Shipping Method")
                                .foregroundColor(Color(UIColor(named: "bbb")!))
                                .padding(4)
                            HStack(spacing: -4){
                                Image(systemName: "shippingbox")
                                    .font(.largeTitle)
                                Spacer()
                                VStack(alignment: .leading){
                                    Text("Global Air Home Delivery \n with Tracking")
                                    Spacer()
                                    Text("Estimated Delivery : feb 16 - feb 22")
                                        .font(.caption2)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                                Image(systemName: "arrow.right")
                                    .foregroundColor(Color(UIColor(named: "bbb")!))
                            }.padding()
                            
                            Divider()
                            
                           
                                Text("Order Summary")
                                .foregroundColor(Color(UIColor(named: "bbb")!))
                                
                            HStack{
                                Text("Items Total")
                                Spacer()
                                Text("SR 1,329")
                                    .font(.caption2)
                            }.padding(4)
                            
                            HStack{
                                Text("Discounts")
                                Spacer()
                                Text("SR 0.00")
                                .font(.caption2)
                            }.padding(4)
                            
                        }
                        
                        
                    }
                    VStack(alignment: .leading){
                        
                        HStack{
                            Text("Product Discounts")
                            Spacer()
                            Text("SR 0.00")
                        }.font(.caption2)
                        .padding(4)
                        Divider()
                        
                        HStack{
                            Text("Subtotal")
                            Spacer()
                            Text("SR 0.00")
                                .font(.caption)
                        }
                        
                        HStack{
                            Text("Shipping")
                            Spacer()
                            Text("SR 0.00")
                                .font(.caption)
                        }.padding(4)
                        HStack{
                            Text("Duties & Taxes")
                            Image(systemName: "questionmark.circle")
                                .font(.caption)
                                .foregroundColor(.gray)
                            Spacer()
                            Text("included")
                                .font(.caption2)
                        }.padding(4)
                        Divider()
                        
                        VStack{
                            HStack{
                                Text("Order Total")
                                Spacer()
                                Text("SR 1,329")
                                    .font(.caption)
                                
                            }.padding(4)
                            Divider()
                            HStack{
                                Text("Total")
                                    .font(.caption2)
                                    .foregroundColor(.gray)
                                Spacer()
                            }.padding(4)
                            
                            HStack{
                                Text("SR 1,329")
                                Spacer()
                                Button(action:{self.isComplet.toggle()}) {
                                    Text("Complete The Order")
                                        .font(.body)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding(.vertical,11)
                                        .padding(.horizontal,30)
                                        .background(Color(UIColor(named: "bbb")!))
                                        .cornerRadius(99)
                                
                                }.fullScreenCover(isPresented: $isComplet, content: {End()})
                            }.padding(4)
                        }
                        
                        
                    }
                }.padding()
                
            }
            .navigationTitle("Checkout")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CheckOut_Previews: PreviewProvider {
    static var previews: some View {
        CheckOut()
    }
}
