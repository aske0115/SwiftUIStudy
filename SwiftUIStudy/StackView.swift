//
//  StackView.swift
//  SwiftUIStudy
//
//  Created by GeunHwa Lee on 2022/03/20.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline , spacing:20) {
            Text("Hello, World!1")
            Text("Hello, World!222")
            Text("Hello, World!1412iasufiasugdfiausgdifugasidfuas43")
        }
        
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
