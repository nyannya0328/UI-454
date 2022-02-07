//
//  ContentView.swift
//  UI-454
//
//  Created by nyannyan0328 on 2022/02/07.
//

import SwiftUI

struct ContentView: View {
    @State var currentTab : Int = 1
    var body: some View {
        
        TabView(selection: $currentTab) {
            
            ForEach(1...6,id:\.self){index in
                
                
                GeometryReader{proxy in
                    
                    
                 Image("p\(index)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .offset(x: -(proxy.frame(in: .global).minX))
                        .frame(width: getRect().width, height: getRect().height / 2)
                    
                    
                }
                .frame(height: getRect().height / 2)
                .cornerRadius(10)
               
                .background(.white)
                .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                .shadow(color: .black.opacity(0.3), radius: 5, x: -5, y: -5)
                .padding(.horizontal,15)
                .cornerRadius(10)
                .overlay(alignment: .bottomTrailing) {
                    Image("p\(index)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .offset(x: -20)
                        
                    
                    
                }
            }
            
            
            
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View{
    
    func getRect() -> CGRect{
        
        return UIScreen.main.bounds
    }
}
