//
//  ChatChat.swift
//  My Shopper's
//
//  Created by atheer alshihei on 15/07/1443 AH.
//

import SwiftUI

struct ChatChat: View {
    
    //    init() {
    //            let coloredAppearance = UINavigationBarAppearance()
    //            coloredAppearance.configureWithOpaqueBackground()
    //            coloredAppearance.backgroundColor = UIColor.init(named:".aaa" )
    //            coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.red]
    //            coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
    //            UINavigationBar.appearance().standardAppearance = coloredAppearance
    //            UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    //          }
    //
        //let chats=Chat.sampleChat
        
        @StateObject var viewModel = ChatsViewModel()
        
        @State private var query = ""
        
        
        init() {
                       let coloredAppearance = UINavigationBarAppearance()
                       coloredAppearance.configureWithOpaqueBackground()
                       coloredAppearance.backgroundColor = UIColor.init(named: "aaa")
                       coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
                       coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
                       UINavigationBar.appearance().standardAppearance = coloredAppearance
                       UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
                   }
        var body: some View {
            
            NavigationView {
                List {
                    ForEach(viewModel.getSortedFilteredChats(query: query)){ chat in
                        
                        
                        ZStack{
                            
                            ChatRow(chat: chat)

                            NavigationLink (destination: {
                              //  Text(chat.person.name )
                                ChatView(chat: chat)
                                    .environmentObject(viewModel)
                                
                            }){
                                EmptyView()
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width:0)
                            .opacity(0)

                        }
                       // ChatView(chat: chat )
                        
                        .swipeActions(edge: .leading, allowsFullSwipe: true){
                            
                            Button(action: {
                                viewModel.markAsUnread(!chat.hasUnreadMessage, chat: chat)
                            }) {
                                if chat.hasUnreadMessage{
                                    Label("Read", systemImage:"text.bubble")
                                }
                                else {
                                    Label("UnRead", systemImage:"circle.fill")

                                }
                            }
                            .tint(Color (UIColor(named: "bbb")!))
                          //  .tint(.gray)
                            //.foregroundColor(Color (UIColor(named: "bbb")!))

                        }
                        
                    }
                }
                .listStyle(PlainListStyle())
                .searchable(text:$query)
                .navigationTitle("Chats")
                .navigationBarTitleDisplayMode(.inline)
                .foregroundColor(Color(UIColor(named: "bbb")!))
                .navigationBarItems(trailing: Button(action: {}){
                    Image(systemName:"squere.and.pencil")
                })
            }
        }
    }

struct ChatChat_Previews: PreviewProvider {
    static var previews: some View {
        ChatChat()
    }
}
