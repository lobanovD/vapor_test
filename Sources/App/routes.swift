import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("add") { req async -> String in
        let a = 5+5
        return(String(a))
    }
    

}
