//
//  IndecisiveViewModel.swift
//  Indecisive8Ball
//
//  Created by dmu mac 25 on 23/02/2023.
//

import Foundation

class IndecisiveViewModel: ObservableObject {
    @Published private(set) var indecisiveSentences = [String]()
    @Published private(set) var helloSentences = [String]()
    @Published var helloSentence: String = ""
    @Published var sentence: String = ""


    init(){
//Hello Sentences
        helloSentences.append("Oi!")
        helloSentences.append("Ask away")
        helloSentences.append("Hiii UwU")
        helloSentences.append("Hello there!")
        helloSentences.append("Hey")
        helloSentences.append("Hello World, i mean hi")
        helloSentences.append("Hello")
//Indecisive Sentences
        indecisiveSentences.append("Maybe")
        indecisiveSentences.append("Yes and no")
        indecisiveSentences.append("Yanay")
        indecisiveSentences.append("Perhaps")
        indecisiveSentences.append("Be, it might")
        indecisiveSentences.append("No or yes, idk")
        indecisiveSentences.append("Hhhmmmm, ask someone else")

        helloSentence = getNewHelloSentence()
        sentence = getNewIndecisiveSentence()
        
    }
    
//    private func setIndecisiveSentences(_ sentenceList: [String]){
//        self.indecisiveSentences = sentenceList
//    }
    
    public func getIndecisiveSentences() -> [String] {
        return indecisiveSentences
    }
    
    public func getNewIndecisiveSentence() -> String {
        let randomI = Int.random(in: 0...indecisiveSentences.count-1)
        return indecisiveSentences[randomI]
    }
    
    public func getIndecisiveAddSentence() -> String {
        return "Adding without asking? try asking . . ."
    }
    
//    private func setHelloSentences(_ sentenceList: [String]){
//        self.indecisiveSentences = sentenceList
//    }
    
    public func getHelloSentences() -> [String] {
        return helloSentences
    }
    
    public func getNewHelloSentence() -> String {
        let randomI = Int.random(in: 0...helloSentences.count-1)
        return helloSentences[randomI]
    }
    
}
