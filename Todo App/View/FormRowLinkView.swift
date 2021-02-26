//
//  FormRowLinkView.swift
//  Todo App
//
//  Created by zero on 24/02/21.
//

import SwiftUI

struct FormRowLinkView: View {
    //property
    var icon:String
    var color:Color
    var text:String
    var link:String
    
    //body
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 8,style: .continuous).fill(Color.gray)
                Image(systemName: icon)
                    .foregroundColor(Color.white)
            }//zstack
            .frame(width: 36, height: 36, alignment: .center)
            Text(text)
                .foregroundColor(Color.gray)
            Spacer()
            Button(action: {
                //buka link
                guard let url = URL(string: self.link),UIApplication.shared.canOpenURL(url) else{
                    return
                }
                UIApplication.shared.open(url as URL)
            }){
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                
            }//button buka link
            .accentColor(Color(.systemGray2))
            
        }//hstack
    }
}

struct FormRowLinkView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowLinkView(icon: "globe", color: Color.pink, text: "Website", link: "")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
