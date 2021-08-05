//
//  QuestionView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 01/08/21.
//

import SwiftUI
import Firebase

class QuestionView: ObservableObject {

    @Published var questions : [Question] = []
    
    func getQuestions(set: String) {
        
        let db = Firestore.firestore()
        
        db.collection("quiz").getDocuments { (snap, err) in
            
            guard let data = snap else{return}
            
            DispatchQueue.main.async {
                self.questions = data.documents.compactMap({ (doc) -> Question? in
                    return try? doc.data(as: Question.self)
                })
            }
        }
    }
}
