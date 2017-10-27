//
//  Ushqimi.swift
//  Ushqimet
//
//  Created by Student on 10/27/17.
//  Copyright © 2017 Ardit BIbaj. All rights reserved.
//

import Foundation
class Ushqimi
{
    let emri:String
    let pershkrimi:String
    let cmimi:Double
    let kugjindet:String
    let kohaepritjes:Int
    var fotoja:String
    
    init(emriushqimit:String,pershkrimiushqimit:String,cmimiushqimit:Double,kugjindetushqimi:String,kohaepritjesushqimit:Int,fotojaushqimit:String) {
        emri = emriushqimit
        pershkrimi = pershkrimiushqimit
        cmimi = cmimiushqimit
        kugjindet = kugjindetushqimi
        kohaepritjes = kohaepritjesushqimit
        fotoja = fotojaushqimit
    }
}
