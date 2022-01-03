//
//  SPCountriesList.swift
//  spspeak
//
//  Created by Barsoum on 1/3/22.
//

import SwiftUI

struct SPCountriesList: View {
    @EnvironmentObject var modelData: ModelData
    var countries: [Countries] {
        modelData.countries
    }
    var body: some View {
        NavigationView {
            List {
                ForEach (countries) { countries in
                    NavigationLink(destination: SPCountriesDetail(countries: countries)) {
                        SPCountriesRow(country: countries)
                    }
                }
            }
            .navigationTitle("Countries")
        }
    }
}

struct SPCountriesList_Previews: PreviewProvider {
    static var previews: some View {
        SPCountriesList()
            .environmentObject(ModelData())
    }
}
