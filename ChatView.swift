//
//  ChatView.swift
//  Chat-besh
//
//  Created by bashayer Mohammad on 11/07/1443 AH.
//

import SwiftUI

struct ChatView: View {
    
    @EnvironmentObject var viewMode1: ChatsViewModel
    
    let chat: Chat
    
    @State private var text = ""
    @FocusState private var isFocused
    
    @State private var messageIDToScroll : UUID?
    
    var body: some View {
        
        //Text(chat.person.name)
        VStack(spacing:0){
            GeometryReader { reader in
                ScrollView{
                    ScrollViewReader { ScrollReader in
                        getMessagesView(viewWidth: reader.size.width)
                            .padding(.horizontal)
                            .onChange(of: messageIDToScroll) {_ in
                                if let messageID = messageIDToScroll{
                                    
                                    scrollTo(messageID: messageID, shouldAnimate: true, scrollReader: ScrollReader)
                                }
                            }
                            .onAppear {
                                if let messageID = chat.messages.last?.id{
                                    scrollTo(messageID: messageID, anchor: .bottom, shouldAnimate: false, scrollReader: ScrollReader)
                                }
                            }
                        
                    }
                    
                }
            }
            .padding(.bottom,5)
            toolbarView()
            
            
        }
        .padding(.top,1)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading: navBarLeadingBtn , trailing: navBarTrailingBtn)
        .onAppear {
            viewMode1.markAsUnread(false, chat: chat)
        }
    }
    
    func scrollTo(messageID: UUID , anchor: UnitPoint? = nil, shouldAnimate: Bool , scrollReader : ScrollViewProxy ){
        
        DispatchQueue.main.async {
            withAnimation(shouldAnimate ? Animation.easeIn: nil){
                scrollReader.scrollTo(messageID, anchor: anchor)
            }
        }
    }
    
    
    var navBarLeadingBtn: some View {
        Button(action: {}){
            HStack{
                Image(chat.person.imgString)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text(chat.person.name).bold()
            }
            .foregroundColor(Color.black)
        }
    }
    
    var navBarTrailingBtn: some View {
        HStack{
            
            Button(action: {}){
                Image(systemName: "video")
            }
            .foregroundColor(Color (UIColor(named: "bbb")!))
            
            
            Button(action: {}){
                Image(systemName: "phone")
            }
           // .foregroundColor(Color.blue)
            .foregroundColor(Color (UIColor(named: "bbb")!))

        }
        
    }
    
    
    func toolbarView() -> some View {
        VStack{
            let height: CGFloat = 37
            HStack{
                TextField("Message ... ", text: $text)
                    .padding(.horizontal, 10)
                    .frame(height: height)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 13))
                    .focused($isFocused)
                
                Button(action: sendMessage ){
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.white)
                        .frame(width: height, height: height )
                        .background(
                            Circle()
                                .foregroundColor(text.isEmpty ? .gray : .blue)
                        )
                    //.foregroundColor(Color(UIColor(named: "aaa")!))
                    
                }
                .disabled(text.isEmpty)
                
            }
            .frame(height: height)
            //Text("ToolBar")
        }
        .padding(.vertical)
        .padding(.horizontal)
        .background(.thickMaterial)
    }
    
    
    func sendMessage(){
        if let message = viewMode1.sendMessage(text, in: chat) {
            
            text = ""
            messageIDToScroll = message.id
            
        }
    }
    
    
    let columns = [GridItem(.flexible(minimum: 10))]
    func getMessagesView(viewWidth: CGFloat) -> some View {
        
        LazyVGrid(columns: columns , spacing: 0 , pinnedViews: [.sectionHeaders]){
            let sectionMessages = viewMode1.getSectionMessages(for: chat)
            ForEach(sectionMessages.indices, id: \.self){ sectionIndex in
                let messages = sectionMessages[sectionIndex]
                Section(header: sectionHeader(firstMessage: messages.first!)){
                    ForEach(messages){ message in
                        let isReceived = message.type == .Received
                        HStack{
                            ZStack{
                                Text (message.text)
                                    .padding(.horizontal)
                                    .padding(.vertical, 12)
                                //.background(isReceived ? Color.black.opacity(0.2): .green.opacity(0.9) )
                                    .background(isReceived ? Color(UIColor(named: "aaa")!).opacity(0.2): Color(UIColor(named: "aaa")!))
                                
                                    .cornerRadius(13)
                            }
                            .frame(width: viewWidth * 0.7 , alignment: isReceived ? .leading: .trailing)
                            .padding(.vertical)
                            // .background(Color.blue)
                        }
                        .frame(maxWidth: .infinity, alignment:isReceived ? .leading : .trailing )
                        .id(message.id)
                        
                        
                    }
                    
                }
                
            }
            
            
        }
        
    }
    
    func sectionHeader(firstMessage message: Message) -> some View {
        ZStack {
            Text(message.date.descriptiveString(dateStyle: .medium))
                .foregroundColor(.white)
                .font(.system(size: 14 , weight: .regular))
                .frame(width: 120)
                .padding(.vertical,5)
                .background(Capsule().foregroundColor(.gray))
        }
        .padding(.vertical,5)
        .frame(maxWidth: .infinity)
    }
    
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            ChatView(chat: Chat.sampleChat[0])
                .environmentObject(ChatsViewModel())
        }
    }
}

