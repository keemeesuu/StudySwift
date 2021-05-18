//
//  MyVstackView.swift
//  StudySwift
//
//  Created by hogy on 2021/05/18.
//

import SwiftUI

struct MyVstackView: View {
    
    // 데이터를 연동시킨다
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    
    var body: some View {
        VStack {
            Text("SwiftUI1")
                .padding()
            Text("SwiftUI2")
                .padding()
            Text("SwiftUI3")
                .padding()
        } // Vstack
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}


// 보여주는 용도
struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
