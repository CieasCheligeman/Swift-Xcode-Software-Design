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
        
        vocabArray.append(DataBase(vocabularyInput: "I", meaningInput: "我"));
        vocabArray.append(DataBase(vocabularyInput: "finally", meaningInput: "终于"));
        vocabArray.append(DataBase(vocabularyInput: "finish", meaningInput: "完成"));
        vocabArray.append(DataBase(vocabularyInput: "this", meaningInput: "这个"));
        vocabArray.append(DataBase(vocabularyInput: "software!", meaningInput: "软件!"));
        
    }
}
