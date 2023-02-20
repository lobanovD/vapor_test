import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }
    
    app.get("hello") { req -> String in
        let hello = try req.query.decode(Hello.self)
        return "Hello, \(hello.name ?? "Anonymous")"
    }

    app.get("add") { req async -> String in
        let a = 5+5
        return(String(a))
    }
    
    app.get("hello", ":name") { req -> String in
        guard let name = req.parameters.get("name") else {return "error"}
        return "Hello, \(name)!"
    }

}
