//
//  IKEADataStore.swift
//  IKEAFinder
//
//  Created by Elliott, Rob on 9/26/18.
//  Copyright © 2018 Elliott, Rob. All rights reserved.
//

import UIKit

final class IKEADataStore {
    
    static let sharedInstance = IKEADataStore()
    
    var allIKEAs = [IKEA]()
    
    init() {
        
        // PASTE IN CODE FROM PASTEBIN
        let aalborg = IKEA(storeName: "Aalborg",
                           storeNumber: 5,
                           storeImage: "ikea_brooklyn",
                           address: "Krebsen 40",
                           city: "Åalborg",
                           zipCode: "9200",
                           country: "Denmark",
                           telephone: "4572299300",
                           size: 31861,
                           roomSettings: 52,
                           realLifeHomes: 3,
                           cashLanes: 28,
                           restaurantSeating: 361,
                           smaland: true,
                           webpage: "http://www.ikea.com/dk/da/store/aalborg",
                           latitude: 56.99516952,
                           longitude: 9.8662433)
        
        
        let aarhus = IKEA(storeName: "Aarhus",
                          storeNumber: 298,
                          storeImage: "ikea_burbank",
                          address: "Graham Bells Vej  9-11",
                          city: "Aarhus",
                          zipCode: "8200",
                          country: "Denmark",
                          telephone: "4541214488",
                          size: 0,
                          roomSettings: 0,
                          realLifeHomes: 0,
                          cashLanes: 0,
                          restaurantSeating: 0,
                          smaland: true,
                          webpage: "http://www.ikea.com/dk/da/store/aarhus",
                          latitude: 56.203934,
                          longitude: 10.181035)
        
        
        
        let abudhabi = IKEA(storeName: "Abu Dhabi",
                            storeNumber: 55,
                            storeImage: "ikea_cairo",
                            address: "Dubai Festival City",
                            city: "Dubai",
                            zipCode: "50618",
                            country: "United Arab Emirates",
                            telephone: "97126812228",
                            size: 24176,
                            roomSettings: 53,
                            realLifeHomes: 3,
                            cashLanes: 22,
                            restaurantSeating: 822,
                            smaland: true,
                            webpage: "http://www.ikea.com/ae/en/store/abu_dhabi",
                            latitude: 24.292597,
                            longitude: 54.364765)
        
        
        let adelaide = IKEA(storeName: "Adelaide",
                            storeNumber: 192,
                            storeImage: "ikea_canton",
                            address: "Sir Donald Bradman Drive  397",
                            city: "Adelaide",
                            zipCode: "5950",
                            country: "Australia",
                            telephone: "61881544532",
                            size: 23500,
                            roomSettings: 51,
                            realLifeHomes: 3,
                            cashLanes: 0,
                            restaurantSeating: 0,
                            smaland: true,
                            webpage: "http://www.ikea.com/aa/en/store/adelaide",
                            latitude: -34.9343127,
                            longitude: 138.5384295)
        
        
        
        let adygea = IKEA(storeName: "Adygea (Adygea-Kuban)",
                          storeNumber: 480,
                          storeImage: "ikea_carson",
                          address: "Takhtamukaiskiy Region",
                          city: "Adigeya",
                          zipCode: "385112",
                          country: "Russia",
                          telephone: "",
                          size: 26650,
                          roomSettings: 59,
                          realLifeHomes: 2,
                          cashLanes: 20,
                          restaurantSeating: 620,
                          smaland: true,
                          webpage: "http://www.ikea.com/ru/ru/",
                          latitude: 45.010937,
                          longitude: 38.926809)
        
        
        let almhult = IKEA(storeName: "Älmhult",
                           storeNumber: 268,
                           storeImage: "ikea_elizabeth",
                           address: "Handelsvägen 4",
                           city: "Älmhult",
                           zipCode: "34333",
                           country: "Sweden",
                           telephone: "4647681600",
                           size: 25391,
                           roomSettings: 28,
                           realLifeHomes: 2,
                           cashLanes: 12,
                           restaurantSeating: 550,
                           smaland: true,
                           webpage: "http://www.ikea.com/se/sv/store/almhult",
                           latitude: 56.5524461,
                           longitude: 14.1374047)
        
        
        
        let amersfoort = IKEA(storeName: "Amersfoort",
                              storeNumber: 415,
                              storeImage: "ikea_emeryville",
                              address: "Euroweg  101",
                              city: "Amersfoort",
                              zipCode: "3825HB",
                              country: "Netherlands",
                              telephone: "31334543546",
                              size: 30967,
                              roomSettings: 72,
                              realLifeHomes: 3,
                              cashLanes: 29,
                              restaurantSeating: 541,
                              smaland: true,
                              webpage: "http://www.ikea.com/nl/nl/store/amersfoort",
                              latitude: 52.187064,
                              longitude: 5.415384)
        
        
        let amman = IKEA(storeName: "Amman",
                         storeNumber: 237,
                         storeImage: "ikea_hamburg",
                         address: "Airport Road - Madaba Bridge",
                         city: "Amman",
                         zipCode: "11821",
                         country: "Jordan",
                         telephone: "96265508030",
                         size: 35250,
                         roomSettings: 0,
                         realLifeHomes: 0,
                         cashLanes: 14,
                         restaurantSeating: 470,
                         smaland: true,
                         webpage: "",
                         latitude: 31.826244,
                         longitude: 35.901653)
        
        
        
        let amsterdam = IKEA(storeName: "Amsterdam",
                             storeNumber: 88,
                             storeImage: "ikea_madrid",
                             address: "Hullenbergweg  2",
                             city: "Amsterdam",
                             zipCode: "1101 BL",
                             country: "Netherlands",
                             telephone: "31205648888",
                             size: 32709,
                             roomSettings: 72,
                             realLifeHomes: 3,
                             cashLanes: 37,
                             restaurantSeating: 612,
                             smaland: true,
                             webpage: "http://www.ikea.com/nl/nl/store/amsterdam",
                             latitude: 52.3025445,
                             longitude: 4.949478)
        
        
        let ancona = IKEA(storeName: "Ancona (Camerano)",
                          storeNumber: 457,
                          storeImage: "ikea_sandiego",
                          address: "Via Terme Dell'aspio Ex Farfisa",
                          city: "Camerano",
                          zipCode: "60021",
                          country: "Italy",
                          telephone: "",
                          size: 24083,
                          roomSettings: 54,
                          realLifeHomes: 3,
                          cashLanes: 28,
                          restaurantSeating: 424,
                          smaland: true,
                          webpage: "",
                          latitude: 43.5298062,
                          longitude: 13.5195018)
        
        
        
        let ankara = IKEA(storeName: "Ankara",
                          storeNumber: 127,
                          storeImage: "ikea_tampines",
                          address: "IKEA Anatolium ADA Parcel",
                          city: "Ankara",
                          zipCode: "39658",
                          country: "Turkey",
                          telephone: "+90 216 5280555/2017",
                          size: 39167,
                          roomSettings: 50,
                          realLifeHomes: 3,
                          cashLanes: 25,
                          restaurantSeating: 700,
                          smaland: true,
                          webpage: "http://www.ikea.com.tr/Magaza/Genel/5.aspx",
                          latitude: 39.888453,
                          longitude: 32.932642)
        
        
        let antwerp = IKEA(storeName: "Antwerp (Wilrijk)",
                           storeNumber: 179,
                           storeImage: "ikea_tempe",
                           address: "",
                           city: "",
                           zipCode: "",
                           country: "Belgium",
                           telephone: "",
                           size: 32194,
                           roomSettings: 53,
                           realLifeHomes: 3,
                           cashLanes: 40,
                           restaurantSeating: 670,
                           smaland: true,
                           webpage: "",
                           latitude: 51.157466,
                           longitude: 4.385166)
        
        
        
        let arlon = IKEA(storeName: "Arlon (Sterpenich)",
                         storeNumber: 483,
                         storeImage: "ikea_tottenham",
                         address: "Rue De Grasse  100",
                         city: "Arlon",
                         zipCode: "6700",
                         country: "Belgium",
                         telephone: "3263214811",
                         size: 25429,
                         roomSettings: 46,
                         realLifeHomes: 3,
                         cashLanes: 28,
                         restaurantSeating: 460,
                         smaland: true,
                         webpage: "http://www.ikea.com/be/nl/store/arlon",
                         latitude: 49.637277,
                         longitude: 5.890919)
        
        
        let asturias = IKEA(storeName: "Asturias",
                            storeNumber: 428,
                            storeImage: "ikea_wembley",
                            address: "Parque Principado Concejo De Siero",
                            city: "Pola De Siero",
                            zipCode: "33510",
                            country: "Spain",
                            telephone: "34985989725",
                            size: 26147,
                            roomSettings: 42,
                            realLifeHomes: 3,
                            cashLanes: 21,
                            restaurantSeating: 375,
                            smaland: true,
                            webpage: "http://www.ikea.com/es/es/store/asturias",
                            latitude: 43.3878841,
                            longitude: -5.8057548)
        
        
        
        let athens = IKEA(storeName: "Athens (Airport)",
                          storeNumber: 364,
                          storeImage: "ikea_westchester",
                          address: "Bldg 501  Athens International Airport Commercial Park",
                          city: "Athens",
                          zipCode: "19019",
                          country: "Greece",
                          telephone: "302103543411",
                          size: 26195,
                          roomSettings: 46,
                          realLifeHomes: 3,
                          cashLanes: 22,
                          restaurantSeating: 478,
                          smaland: true,
                          webpage: "http://www.ikea.gr/default.aspx?page=home",
                          latitude: 37.9250333,
                          longitude: 23.9316834)
        
        
        let athens2 = IKEA(storeName: "Athens (Kifisou)",
                           storeNumber: 365,
                           storeImage: "ikea_brooklyn",
                           address: "Kifisou Avenue  96",
                           city: "Aigaleo",
                           zipCode: "12241",
                           country: "Greece",
                           telephone: "302105400430",
                           size: 25040,
                           roomSettings: 52,
                           realLifeHomes: 3,
                           cashLanes: 23,
                           restaurantSeating: 426,
                           smaland: true,
                           webpage: "",
                           latitude: 37.9815857,
                           longitude: 23.6793935)
        
        
        
        let atlanta = IKEA(storeName: "Atlanta (Midtown)",
                           storeNumber: 257,
                           storeImage: "ikea_burbank",
                           address: "16th Street  441",
                           city: "Atlanta",
                           zipCode: "30363",
                           country: "USA",
                           telephone: "",
                           size: 31600,
                           roomSettings: 45,
                           realLifeHomes: 3,
                           cashLanes: 25,
                           restaurantSeating: 398,
                           smaland: true,
                           webpage: "http://www.ikea.com/us/en/store/atlanta",
                           latitude: 33.7886038,
                           longitude: -84.4050641)
        
        
        let augsburg = IKEA(storeName: "Augsburg",
                            storeNumber: 66,
                            storeImage: "ikea_cairo",
                            address: "Otto Hanh Strasse  99",
                            city: "Gersthofen",
                            zipCode: "86368",
                            country: "Germany",
                            telephone: "",
                            size: 29525,
                            roomSettings: 52,
                            realLifeHomes: 3,
                            cashLanes: 30,
                            restaurantSeating: 452,
                            smaland: true,
                            webpage: "http://www.ikea.com/de/de/store/augsburg",
                            latitude: 48.403923,
                            longitude: 10.871747)
        
        
        
        let austin = IKEA(storeName: "Austin (Round Rock)",
                          storeNumber: 27,
                          storeImage: "ikea_canton",
                          address: "Ikea Way  1",
                          city: "Round Rock",
                          zipCode: "78664",
                          country: "USA",
                          telephone: "15123108027",
                          size: 28292,
                          roomSettings: 40,
                          realLifeHomes: 3,
                          cashLanes: 20,
                          restaurantSeating: 250,
                          smaland: true,
                          webpage: "http://www.ikea.com/us/en/store/round_rock",
                          latitude: 30.5572378,
                          longitude: -97.6900849)
        
        
        let avignon = IKEA(storeName: "Avignon (Vedène)",
                           storeNumber: 18,
                           storeImage: "ikea_carson",
                           address: "100 Chemin Du Pont Blanc",
                           city: "Vedene",
                           zipCode: "84270",
                           country: "France",
                           telephone: "33490338116",
                           size: 27004,
                           roomSettings: 52,
                           realLifeHomes: 3,
                           cashLanes: 28,
                           restaurantSeating: 528,
                           smaland: true,
                           webpage: "http://www.ikea.com/fr/fr/store/avignon",
                           latitude: 43.9789766,
                           longitude: 4.8895785)
        
        
        allIKEAs += [aalborg, aarhus, abudhabi, adelaide, adygea, almhult, amersfoort, amman, amsterdam, ancona, ankara, antwerp, arlon, asturias, athens, athens2, atlanta, augsburg, austin, avignon]
        
        print(allIKEAs.count)

    }
}
