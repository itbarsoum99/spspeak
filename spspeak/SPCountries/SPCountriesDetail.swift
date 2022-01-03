//
//  SPCountriesDetail.swift
//  spspeak
//
//  Created by Barsoum on 12/26/21.
//

import SwiftUI

struct SPCountriesDetail: View {
    @EnvironmentObject var modelData: ModelData
    var countries: Countries
    var countriesIndex: Int {
        modelData.countries.firstIndex(where: {$0.id == countries.id})!
    }
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text(countries.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Divider()
                    .padding(.vertical, 8.0)
            }
            VStack(alignment: .leading) {
                Text("Quick Facts")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.bottom)
                Text("Independence Recognized: " + countries.independence)
                    .font(.body)
                    .padding(.bottom, 3.0)
                Text("Head of Government: " + countries.headofgovernment)
                    .font(.body)
                    .padding(.bottom, 3.0)
                Text("Head of State: " + countries.headofstate)
                    .font(.body)
                    .padding(.bottom, 3.0)
                Text("Population: " + countries.population)
                    .font(.body)
                    .padding(.bottom, 3.0)
                Text("Capital: " + countries.capital)
                    .font(.body)
                    .padding(.bottom, 3.0)
                Text("Official Language: " + countries.language)
                    .font(.body)
                    .padding(.bottom, 3.0)
                Divider()
                    .padding(.vertical, 8.0)
            }
            VStack(alignment: .leading) {
                Text("Description")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.bottom)
                Text(countries.desc)
                    .font(.body)
                    .padding(.bottom)
                Text("Description from Wikipedia")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            
    }
        }
        .padding()
        .padding()
        .ignoresSafeArea(edges: .bottom)

}
}


struct SPCountriesDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        SPCountriesDetail(countries: ModelData().countries[17])
            .environmentObject(modelData)
    }
}
