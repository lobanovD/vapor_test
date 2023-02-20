import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.post("greeting") { req in
        let greeting = try req.content.decode(Greeting.self)
        print(greeting.hello) // "world"
        return HTTPStatus.ok
    }
}
