import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("add") { req async -> String in
        let a = 5+5
        return(String(a))
    }
    
    app.get("hello", ":name") { req -> String in
        guard let name = req.parameters.get("name") else {return "error"}
        print(app.routes.all)
        return "Hello, \(name)!"
    }

}
