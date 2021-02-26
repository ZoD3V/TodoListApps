//
//  EmptyListView.swift
//  Todo App
//
//  Created by zero on 19/02/21.
//

import SwiftUI

struct EmptyListView: View {
    //propertiy
    
    let image:[String] = ["illustration-no1","illustration-no2","illustration-no3"]
    
    let tips:[String] = ["untuk mengerti penderitaan kamu harus merasakan penderitaan","orang yang bisa berlaku jahat kepada orang lain hanyalah orang yang tak mengerti rasa sakit orang lain","orang jahat terlahir dari orang baik yang tersakiti"]
    
    var body: some View {
        ZStack{
            VStack{
                Image("\(image.randomElement() ?? self.image[0])")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 256, idealWidth: 280, maxWidth: 360, minHeight: 256, idealHeight: 280, maxHeight: 360, alignment: .center)
                    .layoutPriority(1)
                Text("\(tips.randomElement() ?? self.tips[0])")
                    .layoutPriority(0.5)
                    .font(.system(.headline,design:.rounded))
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color("ColorBase"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView()
    }
}
