//
//  Data.swift
//  vocabRecitation
//
//  Created by CIeas.Chen on 10/23/19.
//  Copyright © 2019 CIeas Chen. All rights reserved.
//

import Foundation

class VocabData {
    
    var arraySize : Int = 4;
    
    var vocabArray = [DataBase]();
    
    init() {
        
        vocabArray.append(DataBase(vocabularyInput: "Jason", meaningInput: "杰森"));
        vocabArray.append(DataBase(vocabularyInput: "happy", meaningInput: "快乐"));
        vocabArray.append(DataBase(vocabularyInput: "teacher", meaningInput: "教师"));
        vocabArray.append(DataBase(vocabularyInput: "training", meaningInput: "训练营"));
        vocabArray.append(DataBase(vocabularyInput: "day!", meaningInput: "日!"));
        
    }
}
