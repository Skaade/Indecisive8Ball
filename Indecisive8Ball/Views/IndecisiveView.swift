//
//  ContentView.swift
//  Indecisive8Ball
//
//  Created by dmu mac 25 on 23/02/2023.
//

import SwiftUI

struct IndecisiveView: View {
    
    @EnvironmentObject var indeVM: IndecisiveViewModel
    
    @State var isShaking = false
    @State var isPushed = false

    
    @State var firstSentence: Bool = true
    //    @State var helloSentence: String
    //    @State var sentence: String
    
    var body: some View {
        NavigationView{
            ZStack {
                Color.black
                VStack{
                    HStack{
                        Text(firstSentence ? indeVM.helloSentence : indeVM.sentence)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .animation(
                                .easeInOut(duration: 0.5))
                    }
                }
            }
            .onTapGesture{
                firstSentence=false;
                indeVM.sentence = " ";
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    indeVM.sentence = indeVM.getNewIndecisiveSentence()}
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        if(isPushed == false){
                            indeVM.sentence = indeVM.getIndecisiveAddSentence();
                            firstSentence = false;
                            isPushed = true;
                        }
                    } label: {
                        Image(systemName: "plus.circle")
                            .foregroundColor(isPushed ? .black : .white)
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        
        
    }
}

struct IndecisiveView_Previews: PreviewProvider {
    static var previews: some View {
        IndecisiveView().environmentObject(IndecisiveViewModel())
        
    }
}
