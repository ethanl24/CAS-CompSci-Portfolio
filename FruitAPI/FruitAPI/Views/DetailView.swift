//
//  DetailView.swift
//  FruitAPI
//
//  Created by Ethan Lee on 2/15/23.
//

import SwiftUI

struct DetailView: View {
    @State var fruitData:[Fruit]?
    var body: some View {
        if let fruitData = fruitData {
            NavigationView {
                List(fruitData, id: \.id) { name in
                    NavigationLink{
                        Image(systemName: "heart.circle")
                        Text(name.name)
                            .font(.system(size: 40))
                        Text(" ")
                        Text("Protein: " + String(name.nutritions.protein))
                        Text("Fat: " + String(name.nutritions.fat))
                        Text("Carbs: " + String(name.nutritions.carbohydrates))
                        Text("Calories: " + String(name.nutritions.calories))
                        Text("Sugar: " + String(name.nutritions.sugar))
                        Image(name.name.lowercased()).resizable().aspectRatio(contentMode: .fit).frame(width: 300, height: 400, alignment: .topLeading)
                        
                    }label: {
                        Text(name.name)
                    }
                    
                }
                .navigationTitle("Fruit Nutrition Facts")
            }
        }
        
        else{
            Text("Loading . . . ")
                .onAppear(perform: {
                    loadFruit { (Fruit) in
                        self.fruitData = Fruit
                    }
                })
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
