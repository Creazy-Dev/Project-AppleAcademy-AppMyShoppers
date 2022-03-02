//
//  ContentView.swift
//  PShopper
//
//  Created by atheer alshihei on 14/07/1443 AH.
//

import SwiftUI

struct ContentView: View {
    @State var isSowingSignIn:Bool=false
    @State var isSowingSignUn:Bool=false

    
    
    var body: some View {

        ZStack{
            Image ("image")
                .resizable()
            .ignoresSafeArea()
            .frame(width: 600, height: 900)
            
            ZStack(/*spacing: 10*/){
                Image("imaag")
                    .resizable()
                    .foregroundColor(Color.white)
                    .frame(width: 300, height: 300)
                    .padding(.bottom,100)
            }
            
        
            VStack{
                
                Button("Sing In"){
                    isSowingSignIn
                       .toggle()
                }
                .fullScreenCover(isPresented: $isSowingSignIn)
                {First()}
                
                .foregroundColor(Color.black)
                .frame(width: 190, height: 40)
        
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
            .cornerRadius(20)
            .padding(.top,250)

                    
//                (action: {}, label: {
//                    Text("Sign up")
//                        .foregroundColor(Color.black)
//                        .frame(width: 190, height: 40)
//                })
//                .background(.white)
//                .cornerRadius(20)
//                .foregroundColor(Color.black)
//                .frame(width: 190, height: 100)
//                .padding(.top,350)
                Button("Sing up"){
                    isSowingSignUn
                       .toggle()
                }
                .fullScreenCover(isPresented: $isSowingSignUn)
                {Signup()}
                
                .foregroundColor(Color.black)
                .frame(width: 190, height: 40)
        
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
            .cornerRadius(20)
           // .padding(.top,)
                
            }
//            .background(.white)
//            .cornerRadius(20)
//            .foregroundColor(Color.black)
//            .frame(width: 190, height: 40)
//            .padding(.top,350)
//            NavigationLink(destination: First(name: collection.name))
//            {Text("")}
            
//            VStack{
//                Button(action: {}, label: {
//                    Text("Sign in")
//                        .foregroundColor(Color.black)
//                        .frame(width: 190, height: 40)
//                })
//                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
//                    .cornerRadius(20)
//                    .padding(.top,250)
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
