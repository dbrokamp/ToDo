//
//  BoxList.swift
//  ToDo
//
//  Created by Drew Brokamp on 11/20/21.
//

import SwiftUI

struct BoxList: View {
    var themes: [Theme]
    
    var body: some View {
        ScrollView {
            VStack {
                Text("a unifying or dominant idea")
                    .font(.body)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .frame(alignment: .center)
                LazyVGrid(columns: [
                    .init(),
                    .init(),
                    .init()
                ], content: {
                    ForEach(themes) { theme in
                        NavigationLink(
                            destination: GoalView(theme: theme),
                            label: {
                                RoundedBox(name: theme.name)
                            })
                        
                    }
                })
            }
        }
        .padding()
    }

}

struct BoxList_Previews: PreviewProvider {
    static var previews: some View {
        BoxList(themes: data)
    }
}
