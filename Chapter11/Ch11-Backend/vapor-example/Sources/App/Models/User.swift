import Vapor
import Fluent

final class User: Model {
    var id: Node?
    var name: String
    var password: String
    
   /* init(name: String) {
        self.name = name
    }*/

    
    init(name: String, password: String) {
        self.name = name
        self.password = password

    }
    
    init(node: Node, in context: Context) throws {
       
        name = try node.extract("name")
        password = try node.extract("password")
        
    }

    func makeNode(context: Context) throws -> Node {
        return try Node(node: [
            "name": name,
            "password": password
        ])
    }

    static func prepare(_ database: Database) throws {
        //
    }

    static func revert(_ database: Database) throws {
        //
    }
}
/*
extension User {
    public convenience init?(from string: String) throws {
        self.init(name: string)

    }
}*/
