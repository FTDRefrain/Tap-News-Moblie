//
//  NewsList.swift
//  Tap_New_iOS
//
//  Created by Yichi Zhang on 1/7/18.
//  Copyright © 2018 Yichi Zhang. All rights reserved.
//

import Foundation

class NewsList {
    var newsList = [News]()
    
    let titles = [
        "Jim Harbaugh, Michigan football and the challenging path ahead",
        "University of Michigan's Mcity releases threat-identifying tool for automated vehicles",
        "CMU team publishes paper on how their poker-playing AI beat the best humans",
        "Carnegie Mellon’s ‘Superhuman AI’ bests leading Texas Hold’em poker pros",
        "Apple's New Flagship - iPhone X",
        "HomePod - Apple's Siri Speaker"]
    
    let descriptions = [
        "The day before the Outback Bowl, I wrote about reality in college football. How there's no inbetween or shades of gray at the top. You either did something or you didn't. \n Michigan, I wrote, fell into the latter category. The Wolverines didn't accomplish enough in 2017 to gain ground on Big Ten front-runner Ohio State and allowed programs like Penn State and Michigan State to surge forward in an ever-competitive Big Ten East Division. \n The next day, U-M fell flat in the Outback Bowl. That result probably added to a bubbling level of vitriol from the portion of the fan base that's growing sick and tired of being sick and tired, but it didn't really change anything. Michigan had major problems in 2017 and the result of the Outback Bowl was never going to change that. \n Jim Harbaugh's coaching staff already has been tweaked. More change is on the way. Chances are Harbaugh didn't hop off an airplane and onto an ice-cold Michigan runway on Monday night with a smile.",
        "A new report published by University of Michigan's automated vehicle testing facility, Mcity, lays forward several security vulnerabilities that must be overcome before automated and connected vehicles can become widely adopted. \n In the report, titled \"Assessing Risk: Identifying and Analyzing Cybersecurity Threats to Automated Vehicles,\" researchers imagine three scenarios in which self-driving vehicles show signs of security attacks. \n First, an automated vehicle veers off its navigation route, takes its driver to a desolate road, pulls over and stops. \n Second, when the driver calls his or her vehicle to come to a store, and instead receives a ransom message demanding a $100 bitcoin transfer in return for the vehicle. \n Third, a self-driving vehicle won't move from the driveway, since it senses it's been hacked and the driver's home has been preprogramed as its safe destination.",
        "Tuomas Sandholm, a Carnegie Mellon University professor of computer science, and Noam Brown, a Ph.D. student in computer science at CMU, published a paper in Science that detailed how Libratus managed to beat four of the best no-limit Texas Hold'em poker players in the world this year.",
        "A new paper published by Science today details how Libratus, an AI developed by researchers at Carnegie Mellon’s computer science department, managed to take on and defeat top industry professionals at one of the most challenging forms of poker: No-limit Texas Hold’em. Yes, the same variant of poker that swept the nation during the heady days of the early to mid-aughts.",
        "The iPhone X, pronounced \"iPhone 10,\" was introduced at Apple's September 2017 event as a classic \"One more thing...\" addition to the iPhone 8 and 8 Plus product lineup. According to Apple, the iPhone X represents the biggest technological leap forward since the original iPhone was introduced 10 years ago in 2007, and it sets the path for the next decade of iPhone development.",
        "At the 2017 Worldwide Developers Conference in June, Apple unveiled its much-rumored Siri-based speaker, the HomePod. HomePod, which has been in the works for years, is designed to reinvent the way music is enjoyed in the home, and, according to Apple, it does something that no other company has managed to do -- combines a smart speaker with incredible sound."]
    
    let sources = ["GoBlue", "GoBlue", "CMU", "CMU", "CMU", "Apple", "Apple", "Apple"]
    let imageUrls = ["https://cdn.bleacherreport.net/images/team_logos/328x328/michigan_wolverines_football.png", "https://cdn.bleacherreport.net/images/team_logos/328x328/michigan_wolverines_football.png","https://www.cmu.edu/marcom/brand-standards/images/red-seal-greater-than-two-inches-min.png", "https://www.cmu.edu/marcom/brand-standards/images/red-seal-greater-than-two-inches-min.png", "https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png", "https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png"]
    
    init() {
        print(titles.count, descriptions.count, sources.count, imageUrls.count)
        for i in 0...titles.count-1 {
            newsList.append(News(title: titles[i], description: descriptions[i], source: sources[i], imageUrl: imageUrls[i]))
        }
    }
}
