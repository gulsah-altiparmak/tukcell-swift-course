//
//  DB.swift
//  9-Days
//
//  Created by Gulsah Altiparmak on 21.01.2021.
//

import Foundation
import SQLite

struct UserSt {
    var id:Int64 = 0
    var name:String = ""
    var email:String = ""
}

class DB{
    var db: Connection!
    var tableUser = Table("user")
    
    //veri tabanı içindeki sütunlar
    let id = Expression<Int64>("id")
    let name = Expression<String?>("name")
    let email = Expression<String>("email")
    
    //kullanılan cihazın yoluna bak
    //bir uygulamanın birden fazla domain adresi olabilir
    let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
    
    func fncConnection(){
        let dbPath = path + "/db.sqlite3"
        print("Full path: \(dbPath)")
        db = try! Connection(dbPath) //hatanın nedenin getirir try!c
        
        //try-catch
        //table üretilmişse bir kere daha üretilmemesi için do catch
        do {
            try db.scalar(tableUser.exists)
        } catch  {
            
            try! db.run(tableUser.create { t in
                t.column(id, primaryKey: true)
                t.column(name)
                t.column(email, unique: true)
            })
            
        }
        
    }
    func userInsert(name:String,email: String) -> Int64 {
        do {
            let insert = tableUser.insert(self.name <- name, self.email <- email)
            return try db.run(insert)
        } catch  {
            return -1
        }
      
    }
    func userList() -> [UserSt] {
        var arr:[UserSt] = []
        let users = try! db.prepare(tableUser)
        for item in users {
           // print(item[name]!)
            let us = UserSt(id: item[id], name: item[name]!, email: item[email])
            arr.append(us)
            
        }
        return arr
    }
    func userDelete(uid:Int64) -> Int {
        let alice = tableUser.filter(id == uid)
        return try! db.run(alice.delete())
    }
    
}
