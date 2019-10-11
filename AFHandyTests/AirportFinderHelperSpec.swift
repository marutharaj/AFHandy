//
//  AirportFinderHelperSpec.swift
//  AFHandyTests
//
//  Created by mac on 10/11/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import Quick
import Nimble
import PromiseKit

@testable import AFHandy

class AirportFinderHelperSpec: QuickSpec {
    
    override func spec() {
        
        var promise: Promise<[Airport]>?
        let subject = MockAirportService()
        
        describe("Verify airport finder helper") {
            
            context("When get airports response") {
                
                beforeEach {
                    promise = subject.getAirports()
                }
                
                it("should parse the correct number of results") {
                    expect(promise?.value?.count).to(equal(3885))
                }
                
                it("should parse the correct airport") {
                    let airport = promise?.value?.first
                    expect(airport?.code).to(equal("AAA"))
                    expect(airport?.lat).to(equal("-17.3595"))
                    expect(airport?.lon).to(equal("-145.494"))
                    expect(airport?.name).to(equal("Anaa Airport"))
                    expect(airport?.city).to(equal("Anaa"))
                    expect(airport?.state).to(equal("Tuamotu-Gambier"))
                    expect(airport?.country).to(equal("French Polynesia"))
                    expect(airport?.woeid).to(equal("12512819"))
                    expect(airport?.timezone).to(equal("Pacific/Midway"))
                    expect(airport?.phone).to(equal(""))
                    expect(airport?.type).to(equal("Airports"))
                    expect(airport?.email).to(equal(""))
                    expect(airport?.url).to(equal(""))
                    expect(airport?.runwayLength).to(equal("4921"))
                    expect(airport?.elev).to(equal("7"))
                    expect(airport?.icao).to(equal("NTGA"))
                    expect(airport?.directFlights).to(equal("2"))
                    expect(airport?.carriers).to(equal("1"))
                }
            }
        }
    }
}
