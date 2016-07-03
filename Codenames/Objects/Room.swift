import Foundation

class Room {
    static let instance = Room()
    let playersUpdatedNotificationKey = "playersUpdated"
    
    var name: String?
    var players = [Player]() {
        didSet {
            NSNotificationCenter.defaultCenter().postNotificationName(playersUpdatedNotificationKey, object: self)
        }
    }
    
    func setName(name: String) {
        self.name = name
    }
    
    func getName() -> String {
        guard let name = self.name else { return "Default" }
        return name
    }
    
    func addPlayer(player: Player) {
        self.players.append(player)
    }
    
    func removePlayerAtIndex(index: Int) {
        self.players.removeAtIndex(index)
    }
    
    func getPlayers() -> [Player] {
        return self.players
    }
}