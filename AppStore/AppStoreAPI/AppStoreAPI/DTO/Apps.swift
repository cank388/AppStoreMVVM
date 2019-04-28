//
//  Apps.swift
//  AppStoreAPI
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//


//{
//    "feed":{
//        "title":"New Apps We Love",
//        "id":"https://rss.itunes.apple.com/api/v1/tr/ios-apps/new-apps-we-love/all/25/explicit.json",
//        "author":{
//            "name":"iTunes Store",
//            "uri":"http://wwww.apple.com/tr/itunes/"
//        },
//        "links":[
//        {
//        "self":"https://rss.itunes.apple.com/api/v1/tr/ios-apps/new-apps-we-love/all/25/explicit.json"
//        },
//        {
//        "alternate":"https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewRoom?fcId=1376061535"
//        }
//        ],
//        "copyright":"Copyright © 2018 Apple Inc. Tous droits réservés.",
//        "country":"tr",
//        "icon":"http://itunes.apple.com/favicon.ico",
//        "updated":"2019-03-28T01:41:15.000-07:00",
//        "results":[
//        {
//        "artistName":"Suat Karakusoglu",
//        "id":"1309814123",
//        "releaseDate":"2018-06-14",
//        "name":"Zamekan -Discover,Create Event",
//        "kind":"iosSoftware",
//        "copyright":"© Zamekan",
//        "artistId":"1309814122",
//        "artistUrl":"https://itunes.apple.com/tr/developer/suat-karakusoglu/id1309814122?mt=8",
//        "artworkUrl100":"https://is5-ssl.mzstatic.com/image/thumb/Purple123/v4/26/c0/28/26c028f5-c731-ee6f-5789-a8028c366aba/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-7.png/200x200bb.png",
//        "genres":[
//        {
//        "genreId":"6016",
//        "name":"Entertainment",
//        "url":"https://itunes.apple.com/tr/genre/id6016"
//        },
//        {
//        "genreId":"6005",
//        "name":"Social Networking",
//        "url":"https://itunes.apple.com/tr/genre/id6005"
//        }
//        ],
//        "url":"https://itunes.apple.com/tr/app/zamekan-discover-create-event/id1309814123?mt=8"
//        },
//        {
//        "artistName":"TILE TECHNOLOGY LIMITED",
//        "id":"1442827235",
//        "releaseDate":"2019-02-24",
//        "name":"Tick. Done.",
//        "kind":"iosSoftware",
//        "copyright":"© Tile Technology Limited",
//        "artistId":"1399545107",
//        "artistUrl":"https://itunes.apple.com/tr/developer/tile-technology-limited/id1399545107?mt=8",
//        "artworkUrl100":"https://is3-ssl.mzstatic.com/image/thumb/Purple123/v4/88/d8/9b/88d89b34-8d61-a85d-bc70-db1bc849f0da/AppIcon-0-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-7.png/200x200bb.png",
//        "genres":[
//        {
//        "genreId":"6017",
//        "name":"Education",
//        "url":"https://itunes.apple.com/tr/genre/id6017"
//        },
//        {

import Foundation

public struct Apps: Decodable,Equatable{
    
    public enum CodingKeys: String, CodingKey{
        case artistName
        case name
        case releaseDate
        case image = "artworkUrl100"
    }
    public let artistName: String
    public let name: String
    public let releaseDate: Date
    public let image: URL
    
}
