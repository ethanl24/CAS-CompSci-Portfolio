//
//  FruitList.swift
//  FruitAPI
//
//  Created by Ethan Lee on 1/20/23.


import SwiftUI

struct FruitList: View {
    @State var fruitData:[Fruit]?
    var body: some View {
        DetailView()
    }
}

struct FruitList_Previews: PreviewProvider {
    static var previews: some View {
        FruitList()
    }
}

