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

var countYes = 0 // Being used to count how many experienced players there is from all the players

for player in players { // To loop through all the players, to do the above comment
    if player["Exp"] == "YES" {
        countYes += 1
    }
}

let expPlayerPerTeam = countYes/3 // 3 is the amount of teams
let nonExpPlayerPerTeam = (players.count - countYes) / 3

// Converting String to Int has not been taught, But I will be needing to use it to compare the players heights to get all teams average height within 1,5 Inches. Where as var: Double = Double(String).
/*
func getAllTeamsHeight() -> (dragonsHeight: Double, sharksHeight: Double, raptorsHeight: Double) {
    var dragonsHeight = 0.0
    var sharksHeight = 0.0
    var raptorsHeight = 0.0
    var count = 0
    while count < dragons.count {
        let result = dragons[count]
        dragonsHeight += Double(result["height"]!)!
        count += 1
    }
    count = 0
    while count < sharks.count {
        let result = sharks[count]
        sharksHeight += Double(result["height"]!)!
        count += 1
    }
    count = 0
    while count < raptors.count {
        let result = raptors[count]
        raptorsHeight += Double(result["height"]!)!
        count += 1
    }
    return (dragonsHeight, sharksHeight, raptorsHeight)
}
// This function was to get all the total heights from each team
*/

for player in players { // This for loop is to add all players to the teams
    if player["Exp"] == "YES" && dragons.count <= sharks.count && dragons.count <= raptors.count {
        dragons.append(player)
    } else if player["Exp"] == "YES" && sharks.count <= dragons.count && sharks.count <= raptors.count {
        sharks.append(player)
    } else if player["Exp"] == "YES" && raptors.count <= dragons.count && raptors.count <= sharks.count {
        raptors.append(player)
    }
    
    if player["Exp"] == "NO" && dragons.count <= sharks.count && dragons.count <= raptors.count {
        dragons.append(player)
    } else if player["Exp"] == "NO" && sharks.count <= dragons.count && sharks.count <= raptors.count {
        sharks.append(player)
    } else if player["Exp"] == "NO" && raptors.count <= dragons.count && raptors.count <= sharks.count {
        raptors.append(player)
    }
}

// Variables to be made to see height differences
/*

var dragonsVsSharks = ( getAllTeamsHeight().dragonsHeight / Double(dragons.count) ) - ( getAllTeamsHeight().sharksHeight / Double(sharks.count) )
if dragonsVsSharks < 0 { // the if statements are all to get any number in the negative, into the positive
    dragonsVsSharks = dragonsVsSharks * -1
}
var sharksVsRaptos = ( getAllTeamsHeight().sharksHeight / Double(sharks.count) ) - ( getAllTeamsHeight().raptorsHeight / Double(raptors.count) )
if sharksVsRaptos < 0 {
    sharksVsRaptos = sharksVsRaptos * -1
}
var dragonsVsRaptors = ( getAllTeamsHeight().dragonsHeight / Double(dragons.count) ) - ( getAllTeamsHeight().raptorsHeight / Double(raptors.count) )
if dragonsVsRaptors < 0 {
    dragonsVsRaptors = dragonsVsRaptors * -1
}
 */

// The following is to inform the parents, printing out each message. times are as follows:
let dragonsTime: String = "March 17th, 1pm"
let sharksTime: String = "Marcch 17th 3pm"
let raptorsTime: String = "March 18th 1pm"
let league: [Array<Dictionary<String,String>>] = [dragons, sharks, raptors] // array of the entire league

func sendMessage(GuardianName gname: String, PlayerName: String, Time: String, TeamName: String) -> String {
    let message = "Dear \(gname), \(PlayerName)'s team that he will be playing in is the \(TeamName), he will be needing to attend practice on the \(Time). Please make sure he's there on time."
    return message
}

for player in dragons {
    let message = sendMessage(GuardianName: player["guardianName"]!, PlayerName: player["name"]!, Time: dragonsTime, TeamName: "Dragons")
    print(message)
}
for player in sharks {
    let message = sendMessage(GuardianName: player["guardianName"]!, PlayerName: player["name"]!, Time: sharksTime, TeamName: "Sharks")
    print(message)
}
for player in raptors {
    let message = sendMessage(GuardianName: player["guardianName"]!, PlayerName: player["name"]!, Time: raptorsTime, TeamName: "Raptors")
    print(message)
}










