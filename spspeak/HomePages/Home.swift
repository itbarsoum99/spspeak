//
//  SwiftUIView.swift
//  spspeak
//
//  Created by Barsoum on 1/3/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView(showsIndicators: false){
        VStack() {
            Text("Spanish-")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .textCase(.uppercase)
                .frame(maxWidth: .infinity)
                .padding(.top, 50.0)
                .background(Color(red: 0.9725490196078431, green: 0.6941176470588235, blue: 0.5843137254901961))

            Text("speaking")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .textCase(.uppercase)
                .frame(maxWidth: .infinity)
                .background(Color(red: 0.9725490196078431, green: 0.6941176470588235, blue: 0.5843137254901961))

            Text("Countries")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .textCase(.uppercase)
                .frame(maxWidth: .infinity)
                .padding(.bottom)
                .background(Color(red: 0.9725490196078431, green: 0.6941176470588235, blue: 0.5843137254901961))
                            
        }
        
        .frame(maxWidth: .infinity)
        
        VStack(alignment: .leading) {
            HStack {
                Text("About this project")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding([.top, .horizontal])
            Spacer()
            }
            Text("This app presents data about the various countries of the world which have Spanish (español, in the language) included in their list of official national languages.")
                .padding(.horizontal)
            Text("These countries, often called 'Spanish-speaking' ones, have **vastly diverse cultures, societies, and peoples**. This app is meant to bring awareness to the diverse slate of countries and people that exist in the world.")
                .padding([.top, .horizontal])

            
        }
        .padding(.bottom)
        .background(Color(red: 0.9647058823529412, green: 0.4470588235294118, blue: 0.5019607843137255))
        .padding(.top, -8)
            VStack(alignment: .leading) {
                HStack {
                    Text("The countries")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding([.top, .horizontal])
                    Spacer()
                }
                Text("You can view a complete list of countries using the navigation below. There are **twenty sovereign nations** that consider Spanish to be a national language. Eighteen are in the Americas, one is in Europe and one is in Africa.")
                    .padding(.horizontal)

                
            }
            .padding(.bottom)
            .background(Color(red: 0.7529411764705882, green: 0.4235294117647059, blue: 0.5176470588235295))
            .padding(.top, -8)
            VStack(alignment: .leading) {
                HStack {
                    Text("The language")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding([.top, .horizontal])
                    Spacer()
                }
                Text("Spanish is an **emotional, romantic language** and the people that speak it posess a **variety of strong accents** that differentiate regional dialects. It is spoken as a native language by  **463 million people** worldwide, and 97 million speak it as a second language or are students.")
                    .padding(.horizontal)

                
            }
            .padding(.bottom)
            .background(Color(red: 0.4235294117647059, green: 0.3568627450980392, blue: 0.4823529411764706))
            .foregroundColor(.white)
            .padding(.top, -8)
            VStack(alignment: .center) {
                Text("Created by Isaac Barsoum")
                    .padding([.top, .horizontal])
                    .foregroundColor(.white)
                Link("Portfolio ↗", destination: URL(string: "https://itbarsoum.netlify.app/")!)
                    .padding(.bottom)
                    .frame(width: .infinity)
                    .foregroundColor(Color(red: 0.9725490196078431, green: 0.6941176470588235, blue: 0.5843137254901961))
            }
            .frame(maxWidth: .infinity)
            .background(Color(red: 0.20784313725490197, green: 0.3607843137254902, blue: 0.49019607843137253))
            .padding(.top, -8.0)

        }
        .ignoresSafeArea(edges:.top)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
