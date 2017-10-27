//
//  Menu.swift
//  Ushqimet
//
//  Created by Student on 10/27/17.
//  Copyright © 2017 Ardit BIbaj. All rights reserved.
//

import Foundation
class Menu
{
var Ushqimet = [Ushqimi]()
    init(){
        let ushqimet1 = Ushqimi (emriushqimit:"Burger",pershkrimiushqimit:"Burger me mish pule",cmimiushqimit:2,kugjindetushqimi:"MC Donald",kohaepritjesushqimit:15,fotojaushqimit:"burger.png")
        Ushqimet.append(ushqimet1)
        Ushqimet.append(Ushqimi(emriushqimit:"Doner",pershkrimiushqimit:"Doner ne pete",cmimiushqimit:1,kugjindetushqimi:"Tatlises ",kohaepritjesushqimit:10,fotojaushqimit:"doner.png"))
        Ushqimet.append(Ushqimi(emriushqimit:"Pasta",pershkrimiushqimit:"Pasta me djathe",cmimiushqimit:3,kugjindetushqimi:"Gresa Restaurant ",kohaepritjesushqimit:20,fotojaushqimit:"pasta.png"))
            Ushqimet.append(Ushqimi(emriushqimit:"Pizza",pershkrimiushqimit:"Pizza margarita",cmimiushqimit:3,kugjindetushqimi:"Gresa Restaurant ",kohaepritjesushqimit:20,fotojaushqimit:"pizza.png"))
        Ushqimet.append(Ushqimi(emriushqimit:"Steak",pershkrimiushqimit:"Steak i shpejte",cmimiushqimit:5,kugjindetushqimi:"Mexican Restaurant ",kohaepritjesushqimit:20,fotojaushqimit:"steak.png"))
}
}
