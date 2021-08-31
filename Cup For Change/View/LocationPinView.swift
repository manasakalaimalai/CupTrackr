//
//  LocationPinView.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 20/06/21.
//

import SwiftUI

struct LocationPinView: View {
    
    var location: SustainableOrgLocations

    @State private var animation: Double = 0.0
    
    @State private var isShowingDetailView: Bool = false

    var body: some View {
       
        
        Button(action: {
            isShowingDetailView = true
        }) {
            ZStack {
                Circle()
                    .stroke(Color("ColorPink2"), lineWidth: 2)
                    .frame(width: 48, height: 48, alignment: .center)
                    .scaleEffect(0.5 + CGFloat(animation))
                    .opacity(1 - animation)
                Image(systemName: "mappin.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color("ColorPink2"))
                    .cornerRadius(7)
                    .frame(width: 30, height: 30, alignment: .center)
            } //: ZSTACK
            .onAppear() {
                withAnimation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: false)) {
                    animation = 1 }
            } //: ANIMATION
        } //: BUTTON
        .sheet(isPresented: $isShowingDetailView) {
            ScrollView {
            VStack {
                VStack {
                    Text(location.name)
                        .font(.title)
                        .fontWeight(.heavy)
                        .kerning(2)
                        .foregroundColor(Color("ColorPink6"))
                        .background(Color("ColorPink4").frame(width: 450, height: 300, alignment: .center))
                    Text(location.place)
                        .padding(.vertical, 5)
                        .foregroundColor(Color("ColorPink2"))
                }
                .padding(.vertical, 110)
                    
                Text("About")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ColorPink12"))
                    .background(Color("ColorPink7").frame(width: 140, height: 5, alignment: .center).offset(y:20))
                    .padding(.vertical, 20)
                
                Text(location.description)
                    .font(.subheadline)
                    .padding(.horizontal, 25)
                    .lineSpacing(10)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 20)
                
                Text("Website")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ColorPink12"))
                    .background(Color("ColorPink7").frame(width: 100, height: 5, alignment: .center).offset(y:20))
                    .padding(.vertical, 20)
               
                //: WEBSITE LINK
                GroupBox {
                  HStack {
                    Image(systemName: "globe")
                    Text("Google")
                    Spacer()
                    
                    Group {
                      Image(systemName: "arrow.up.right.square")
                        Link("Go To Website", destination: (URL(string: location.websitelink) ?? URL(string: "https://www.google.com"))!)
                    }
                    .foregroundColor(.gray)
                  } //: HSTACK
                } //: GROUP BOX
                .padding(.horizontal)
                //: END OF WEBSITE LINK
            
                Text("Address")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ColorPink12"))
                    .background(Color("ColorPink7").frame(width: 100, height: 5, alignment: .center).offset(y:20))
                    .padding(.vertical, 20)
               
                //: ADDRESS LINK
                GroupBox {
                  HStack {
                    Image(systemName: "globe")
                    Text("Google Maps")
                    Spacer()
                    
                    Group {
                      Image(systemName: "arrow.up.right.square")
                        Link("Get Directions", destination: (URL(string: location.link) ?? URL(string: "https://www.google.com/maps"))!)
                    }
                    .foregroundColor(.gray)
                  } //: HSTACK
                } //: GROUP BOX
                .padding(.horizontal)
                //: END OF ADDRESS LINK

                Text("Contact")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ColorPink12"))
                    .background(Color("ColorPink7").frame(width: 100, height: 5, alignment: .center).offset(y:20))
                    .padding(.vertical, 20)
                
                //: PHONE NUMBER LINK
                GroupBox {
                  HStack {
                    Image(systemName: "phone.circle")
                    Text("Telephone")
                    Spacer()
                    
                    Group {
                      Image(systemName: "arrow.up.right.square")
                        Link("Tap To Call", destination: URL(string: "tel:8005551212")!)
                    }
                    .foregroundColor(.gray)
                  } //: HSTACK
                } //: GROUP BOX
                .padding(.horizontal)
                //: END OF PHONE NUMBER LINK
            } // END OF VSTACK
            .background(Color.white)
        
        } //: END OF SCROLLVIEW
        }
    }
}

// MARK: - PREVIEW

struct LocationPinView_Previews: PreviewProvider {
    
    static let locations: [SustainableOrgLocations] = Bundle.main.decode("location.json")
    
    static var previews: some View {
        LocationPinView(location: locations[4])
          .previewDevice("iPhone 11 Pro")
    }
}
