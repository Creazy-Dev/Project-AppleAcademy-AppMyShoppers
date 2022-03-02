//
//  SearchPage.swift
//  PShopper
//
//  Created by atheer alshihei on 14/07/1443 AH.
//

import SwiftUI

struct SearchPage: View {
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor.init(named: "aaa")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
      }
    
    
    @State var searchCollection = collections
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List(searchCollection) { index in
                        ImageLabelRow(collection: index)
                    }
  
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.automatic)
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        .searchable(text: $searchText)
        .onChange(of: searchText) { index in
            if !index.isEmpty {
                searchCollection = collections.filter { $0.name.contains(index) }
            } else {
                searchCollection = collections
            }
        }
    }
}
struct Collections: Identifiable {
    var id = UUID()
    var name: String
    var brands: String
    var image: String
  
}
var collections = [

    Collections(name: "Dresses", brands: "Gucci", image: "a1"),
    Collections(name: "Shirts", brands: "Dior",image: "a2"),
    Collections(name: "Shoes",brands: "H&M",image: "photo4"),
    Collections(name: "Blouses",brands: "Prada",image: "a4")
]

struct ImageLabelRow: View {
    
    var collection: Collections

    var body: some View {
        HStack {
            Image(collection.image)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                
            
            VStack(alignment: .leading){
            Text(collection.name)
                    .font(.system(.title2, design: .rounded))
                .foregroundColor(.black)
                Text(collection.brands)
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.gray)
                
            }
            NavigationLink(destination: links(name: collection.name)) { Text("")}
        }
        
    }
    
}
func links(name: String) -> AnyView{

switch(name) {
    case ("Blouses"):
                return AnyView(Blouses())
    case ("Shirts"):
                return AnyView(Shirts())
    case ("Dresses"):
                return AnyView(Dresses())
    case ("Shoes"):
                return AnyView(Shoes())
    case ("Bag"):
                return AnyView(Bag())
default:
    return AnyView(ContentView())
}
    
}

struct SearchPage_Previews: PreviewProvider {
    static var previews: some View {
        SearchPage()
    }
}
