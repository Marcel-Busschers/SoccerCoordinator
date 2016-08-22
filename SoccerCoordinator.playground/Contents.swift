// Marcel Busschers


// A Dictionary for each player is being created, with all their corrosponding data within.

let player1: [String: String] = ["name": "Joe Smith", "height": "42", "Exp": "YES", "guardianName": "Jim and Jan Smith"]
let player2: [String: String] = ["name": "Jill Tanner", "height": "36", "Exp": "YES", "guardianName": "Clara Tanner"]
let player3: [String: String] = ["name": "Bill Bon", "height": "43", "Exp": "YES", "guardianName": "Sara and Jenny Bon"]
let player4: [String: String] = ["name": "Eva Gordon", "height": "45", "Exp": "NO", "guardianName": "Wendy and Mike Gordon"]
let player5: [String: String] = ["name": "Matt Gill", "height": "40", "Exp": "NO", "guardianName": "Charles and Sylvia Gill"]
let player6: [String: String] = ["name": "Kimmy Stein", "height": "41", "Exp": "NO", "guardianName": "Bill and Hillary Stein"]
let player7: [String: String] = ["name": "Sammy Adams", "height": "45", "Exp": "NO", "guardianName": "Jeff Adams"]
let player8: [String: String] = ["name": "Karl Saygan", "height": "42", "Exp": "YES", "guardianName": "Heather Bledsoe"]
let player9: [String: String] = ["name": "Suzane Greenberg", "height": "44", "Exp": "YES", "guardianName": "Henrietta Dumas"]
let player10: [String: String] = ["name": "Sal Dali", "height": "41", "Exp": "NO", "guardianName": "Gala Dali"]
let player11: [String: String] = ["name": "Joe Kavalier", "height": "39", "Exp": "NO", "guardianName": "Sam and Elaine Kavalier"]
let player12: [String: String] = ["name": "Ben Finkelstein", "height": "44", "Exp": "NO", "guardianName": "Aaron and Jill Finkelstein"]
let player13: [String: String] = ["name": "Diego Soto", "height": "41", "Exp": "YES", "guardianName": "Robin and Sarika Soto"]
let player14: [String: String] = ["name": "Chloe Alaska", "height": "47", "Exp": "NO", "guardianName": "David and Jamie Alaska"]
let player15: [String: String] = ["name": "Arnold Willis", "height": "43", "Exp": "NO", "guardianName": "Claire Willis"]
let player16: [String: String] = ["name": "Philip Helm", "height": "44", "Exp": "YES", "guardianName": "Thomas Helm and Eva Jones"]
let player17: [String: String] = ["name": "Les Clay", "height": "42", "Exp": "YES", "guardianName": "Wynonna Brown"]
let player18: [String: String] = ["name": "Herschel Krustofski", "height": "45", "Exp": "YES", "guardianName": "Hyman and Rachel Krustofski"]

var players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18] // An Array of Dictionaries of all players, to loop through them.

// Creating an array for each team: Dragons, Sharks and Raptors.
var dragons: [Dictionary<String, String>] = []
var sharks: [Dictionary<String, String>] = []
var raptors: [Dictionary<String, String>] = []

//[Dictionary<String, String>] is to state what variable is is, a dictionary, and the <String, String> is to state what dictionary it is (two strings)

for player in players {
    var countDragons: Int = 0 // used to count how many experience players there is
    var countSharks: Int
    var countRaptors: Int
    var totalDragonsHeight: Int
    var totalSharksHeight: Int
    var totalRaptorsHeight: Int
   
    if (dragons.count <= sharks.count && dragons.count <= raptors.count) { // checks to see which array to add values to (whichever has the least players in)
        for pos in dragons {
            
        }
    } else if (sharks.count <= dragons.count && sharks.count <= raptors.count) {
        for pos in sharks {
            
        }
    } else {
        for pos in raptors {
            
        }
    }
}















