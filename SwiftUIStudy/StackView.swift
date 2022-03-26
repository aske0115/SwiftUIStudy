//
//  StackView.swift
//  SwiftUIStudy
//
//  Created by GeunHwa Lee on 2022/03/20.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack (alignment: .leading) {
        HStack(alignment: .oneThird , spacing:20) {
            Text("Hello, World!1")
            Text("Hello, World!222")
                .alignmentGuide(.oneThird) {
                    $0[VerticalAlignment.bottom]
                }
            Text("Hello, World!1412iasufiasugdfiausgdifugasidfuas43")
        }
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 120, height: 50, alignment: .center)
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 220, height: 50, alignment: .center)
                
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 80, height: 50, alignment: .center)
        }
        
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}


extension VerticalAlignment {
    private enum OneThird: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
                context.height / 3
        }
    }
    
    static let oneThird = VerticalAlignment(OneThird.self)
}
