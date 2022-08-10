//
//  Constant.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 27/06/21.
//

import SwiftUI

// DATA

var learners: [Learner] = Bundle.main.decode("learner.json")

var article: Article = Bundle.main.decode("articles.json")
var articles: [Article] = Bundle.main.decode("articles.json")

var articletwo: ArticleTwo = Bundle.main.decode("articlestwo.json")
var articlestwo: [ArticleTwo] = Bundle.main.decode("articlestwo.json")

var quiz: Quiz = Bundle.main.decode("categoryquiz1.json")
var quizzes: [Quiz] = Bundle.main.decode("categoryquiz1.json")

var cupquiz: Cup = Bundle.main.decode("cupquiz.json")
var cupquizzes: [Cup] = Bundle.main.decode("cupquiz.json")

var moodtracker: Mood = Bundle.main.decode("resources.json")
var moodtrackers: [Mood] = Bundle.main.decode("resources.json")

var sadmood: Sad = Bundle.main.decode("resourcessad.json")
var sadmoods: [Sad] = Bundle.main.decode("resourcessad.json")

