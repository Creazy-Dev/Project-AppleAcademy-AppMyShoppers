////
////  ChatMode.sweft.swift
////  Chat-besh
////
////  Created by bashayer Mohammad on 08/07/1443 AH.
////
//
//import Foundation
//
//struct Chat : Identifiable {
//    var id : UUID { person.id }
//    let person: Person
//    var message : [Message]
//    var hasUnreadMessage = false
//}
//
//
//struct Person : Identifiable {
//    let id = UUID()
//    let name: String
//    let imagString : String
//}
//
//struct Message: Identifiable{
//
//    enum MessageType {
//        case Sent, Received
//    }
//
//    let id = UUID()
//    let date : Date
//    let text: String
//    let type: MessageType
//
//    init (_ text: String, type: MessageType, date: Date){
//        self.date = date
//        self.type = type
//        self.text = text
//    }
//
//    init (_ text: String, type: MessageType ){
//        self.init(text, type: type, date:Date())
//
//    }
//}
//
//extension Chat {
//
//    static let sampleChat = [
//        Chat(person: Person(name:"Hakim", imgString:"img1"), messages: [
//            Message("Hey Hakim", type: .Sent, date: Date (timeIntervalSinceNow: -86400 * 3)),
//            Message("I am just developing an WhatsApp Clone App and it is so hard to create a fake chat conversation. Can you help me out with it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
//            Message("Please I need your help @", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 3)),
//            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
//            Message("Maybe you send me some \"good\" jokes @", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 2)),
//            Message("Sure I can do that. No problem @@", type:.Received, date: Date(timeIntervalSinceNow: -86400 * 2) ),
//            Message ("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
//            Message("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
//            Message("A fsh", type: .Received , date: Date(timeIntervalSinceNow:-86400 * 1)),
//            Message("OMG so bad @@", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 1)),
//            Message("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 1)),
//            Message ("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
//            Message("This joke is sooo old haha", type: .Received, date: Date()), ],hasUnreadMessage: true),
//
//
//        Chat(person: Person(name:"Vladimir W.", imgString:"img6"), messages: [
//            Message ("Hey Vlad, how is your bootcamp going?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 5)) ,
//            Message("It's going great flo. I have just finished my first app, but I still have a lot to learn, but coding is so much fun. I love it :)", type:.Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
//            Message("Hey that sounds great. Congratulations Vlad @", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)) ,
//            Message("What type of app is it?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
//            Message ("It's a Table App. I have coded it for the bootcamp, so that I get more familiar with SwiftUI.", type: .Received, date: Date()),
//            Message ("The big question now is if I should start a junior dev job or if I should do app development just for fun.", type: .Received, date: Date()),
//        ]),
//
//
//        Chat(person: Person(name: "Andrej", imgString: "img7"), messages: [
//            Message("Hey Sensei ", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)) ,
//            Message ("Can you show me a new Meditation exercise? The last one was so helpfull @", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
//            Message ("Yeah sure flo. Have you tested the mindful breathing techniques yet?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
//            Message("No what is that?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
//            Message ("This technique can increase your energy and help you to feel more alert.", type: .Received),
//        ], hasUnreadMessage: true),
//
//        Chat(person: Person(name: "Romesh", imgString:"img9"),messages: [
//            Message ("Hey Romesh, how is your dev journey going?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 4)),
//            Message ("Thanks for asking flo. It is going great. I just completed the HWS course. I have learned so much an now am starting to building my own app.", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 4)),
//            Message ("That sounds great. I'm so proud of you, that you completed the course. Most people don't have the endurance to complete it, because the cannot sit with the problem long enough. So you can definetly see this as an archievment @l", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2))
//        ]),
//
//
//        Chat(person: Person(name: "Dirk S.", imgString: "img8"),messages: [
//            Message("Hey Dirk, are you from germany?", tybe: .Sent, date: Date(timeIntervalSinceNow: -86480 * 2)),
//            Message("Hey Flo, yes I am.", tvpe: .Received,date: Date(timeIntervalSinceNow: -86400 * 2)),
//            Message("Ohh thats cool, how is your dev journey going?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
//            Message("SwiftUI is just amazing, it makes coding so fast and elegant. I have currently completed the 100 days of SwiftUI course from Paul Hudson. The course was awesome and I learned so much @", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
//            Message("Nice Dirk, Congratulations for completing the course. Yeah you are right, I also love developing apps in SwiftUI, because you can do so much crazy stuff with just a few lines of code.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
//            Message("SwiftUI is a real game changer for IOS Development @", tvpe:.Sent, date: Date(timeIntervalSinceNow:
//        -86400 * 1)),
//
//
//        Chat(person: Person(name: "Sandeep", imgString: "img2"),messages:[
//            Message("Hey buddy, what are you doing?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 10)),
//            Message("I'm just learning SwiftUI. Do you know the awesome online course called Hacking With SwiftUI?", type:.Received, date: Date(timeIntervalSinceNow: -86400 * 10)),
//            Message("Oh yeah, this course is awesome. I have completed it and I can fully recommend it as well A", type: .Sent, date: Date (timeIntervalSinceNow: -86400 * 9)),
//        ]),
//
//        Chat(person: Person(name:"Wayne D.", imgString: "img3"), messages: [
//            Message ("Hey Wayne, I just want to say thank you so much for your support on Patron A", type: .Sent, date: Date(timeIntervalSinceNow: -86480 * 4)) ,
//            Message("I hope you will read this@", type:.Sent, date: Date(timeIntervalSinceNow: -86400 * 4)) ,
//            ]),
//        ]
//}


import Foundation

struct Chat : Identifiable {
    var id : UUID { person.id }
    let person: Person
    var messages : [Message]
    var hasUnreadMessage = false
}


struct Person : Identifiable {
    let id = UUID()
    let name: String
    let imgString : String
}

struct Message: Identifiable{
    
    enum MessageType {
        case Sent, Received
    }
    
    let id = UUID()
    let date : Date
    let text: String
    let type: MessageType
    
    init (_ text: String, type: MessageType, date: Date){
        self.date = date
        self.type = type
        self.text = text
    }
    
    init (_ text: String, type: MessageType ){
        //self.init(text, type: type, date:Date())
        self.init(text, type: type, date:Date())
    }
}



extension Chat {
    
    static let sampleChat = [
        
        
        Chat(person: Person(name: "Mohammad", imgString:"img2"), messages: [
            Message("Hi Mohamed", type: .Sent, date: Date (timeIntervalSinceNow: -86400 * 3)),
            Message("I want to buy shoes from Dior, can you help me?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
           // Message("Please I need your help ", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 3)),
            Message("Hi besh .. ", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Sure how can I help you ?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("I need Dior shoes No. 532798 at a lower price ", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 2)),
            Message("Sure I can do that. No problem 😻", type:.Received, date: Date(timeIntervalSinceNow: -86400 * 2) ),
            Message ("I put the product in the basket, can you take a look please ?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("Hmm, what about color ? I want a whaite ", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("Oh , Ok sorry ", type: .Received , date: Date(timeIntervalSinceNow:-86400 * 1)),
            Message("No problem", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 1)),
            Message("I want it to be a gift wrapping", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 1)),
//Message ("OK ، do not worry", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("OK ، do not worry", type: .Received, date: Date()), ],hasUnreadMessage: true),
        
        
//        Chat(person: Person(name: "Mohammad", imgString:"img1"), messages: [
//            Message("Hi Mohamed", type: .Sent, date: Date (timeIntervalSinceNow: -86400 * 3)),
//            Message("I want to buy shoes from Dior, can you help me?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
//            Message("Please I need your help ", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 3)),
//            Message("Sure how can I help you flo?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
//            Message("Maybe you send me some \"good\" jokes @", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 2)),
//            Message("Sure I can do that. No problem @@", type:.Received, date: Date(timeIntervalSinceNow: -86400 * 2) ),
//            Message ("What do you call a fish with no eyes?", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 1)),
//            Message("Hmm, Idk", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
//            Message("A fsh", type: .Received , date: Date(timeIntervalSinceNow:-86400 * 1)),
//            Message("OMG so bad @@", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 1)),
//            Message("Let me try one", type: .Sent, date: Date(timeIntervalSinceNow:-86400 * 1)),
//            Message ("There are 10 types of people in this world, those who understand binary and those who don't", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
//            Message("This joke is sooo old haha", type: .Received, date: Date()), ],hasUnreadMessage: true),

        
        
        Chat(person: Person(name:"Abeer", imgString:"33"), messages: [
            Message ("Hey Abeer, My order No. 345fnb3 hasn't arrived yet", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 5)) ,
            Message("Hello.. what day was the order shipped? ", type:.Received, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message("befor 2 Days..", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)) ,
            Message("I Think", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
            //Message ("It's a Table App. I have coded it for the bootcamp, so that I get more familiar with SwiftUI.", type: .Received, date: Date()),
            Message ("No problem, it usually takes 3 to 15 days for delivery", type: .Received, date: Date()),
        ]),
        
        
        Chat(person: Person(name: "Mashael", imgString: "77"), messages: [
            Message("Hey Mashael ", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)) ,
            Message ("Can you show me a new collection of PRADA please! ", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 3)),
            Message ("Yeah sure , visit my page and show my prand", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Ok Thanks", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message ("Your Welcom ", type: .Received),
        ], hasUnreadMessage: true),
        
        
//        Chat(person: Person(name: "Fahad", imgString:"img9"),messages: [
//            Message("Hey Romesh, how is your dev journey going?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 4)),
//            Message("Thanks for asking flo. It is going great. I just completed the HWS course. I have learned so much an now am starting to building my own app.", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 4)),
//            Message("That sounds great. I'm so proud of you, that you completed the course. Most people don't have the endurance to complete it, because the cannot sit with the problem long enough. So you can definetly see this as an archievment @l", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2))//
//        ]),
        
        
        
        Chat(person: Person(name: "Abdullah", imgString: "12"),messages: [
            Message("Hey Abdullah, can you diliver my order to germany?", type: .Sent, date: Date(timeIntervalSinceNow: -86480 * 2)),
            Message("I'm sorry , but i can't ", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            Message("Ohh 😔 ", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 2)),
           // Message("SwiftUI is just amazing, it makes coding so fast and elegant. I have currently completed the 100 days of SwiftUI course from Paul Hudson. The course was awesome and I learned so much @", type: .Received, date: Date(timeIntervalSinceNow: -86400 * 2)),
            // Message("Nice Dirk, Congratulations for completing the course. Yeah you are right, I also love developing apps in SwiftUI, because you can do so much crazy stuff with just a few lines of code.", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 1)),
            Message("It's okay, shipping will be provided to all over the world soon", type: .Received, date: Date(timeIntervalSinceNow:-86400 * 1)),
        ]),
        
        
        Chat(person: Person(name: "Asma", imgString: "44"),messages:[
            Message("Hey Asma, what are you doing?", type: .Sent, date: Date(timeIntervalSinceNow: -86400 * 10)),
            Message("I'm just learning about how I can help a lot of customer in same time ", type:.Received, date: Date(timeIntervalSinceNow: -86400 * 10)),
            Message("Oh goodluck ", type: .Sent, date: Date (timeIntervalSinceNow: -86400 * 9)),
        ]),
        
        
        
        Chat(person: Person(name:"Faisal", imgString: "1-1"), messages: [
            Message ("Hey Faisal do you have Gucci bag 3042", type: .Sent, date: Date(timeIntervalSinceNow: -86480 * 4)) ,
            Message("I hope you have it ", type:.Sent, date: Date(timeIntervalSinceNow: -86400 * 4)) ,
        ]),
    ]
    
}



