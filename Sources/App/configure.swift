import Vapor

let isLocal = false

// configures your application
public func configure(_ app: Application) throws {
    
    if isLocal {
        app.http.server.configuration.hostname = "127.0.0.1"
        app.http.server.configuration.port = 8080
    } else {
        app.http.server.configuration.hostname = "0.0.0.0"
        app.http.server.configuration.port = 80
    }
    
    try routes(app)
}
