//
//  GridView.swift
//  GridViewDemo
//
//  Created by Mahesh Prasad on 18/04/21.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: false, content: {
                
                VStack{
                    ForEach(1..<6) { i in
                        HStack(spacing: 15){
                            Image("img\(i)").resizable().frame(width: geo.size.width / 2 - 20).background(Color.red).cornerRadius(15)
                            Image("img\(i)").resizable().frame(width: geo.size.width / 2 - 20)
                                .background(Color.red).cornerRadius(15)
                        }.frame(height: UIDevice.current.orientation.isLandscape ? 300 : 150)
                    }
                }
                
            })
        }
    }
}

//When screen is rotated images are streching to avoid this....

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
