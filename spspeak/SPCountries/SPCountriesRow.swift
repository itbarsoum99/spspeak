//
//  SPCountriesRow.swift
//  spspeak
//
//  Created by Barsoum on 1/3/22.
//

import SwiftUI

struct SPCountriesRow: View {
    var country: Countries
    var body: some View {
        HStack {
            Text(country.name)
                .padding([.trailing, .vertical])
            Spacer()
        }
    }
}

struct SPCountriesRow_Previews: PreviewProvider {
    static var countries = ModelData().countries
    static var previews: some View {
        SPCountriesRow(country: countries[0])
    }
}
