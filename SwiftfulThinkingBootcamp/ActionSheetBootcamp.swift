//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 04..
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOptions: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost, isOtherPost
    }
    
    var body: some View {
//        Button("Click here") {
//            showActionSheet.toggle()
//        }
//        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 32, height: 32)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOptions = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
//        let cancelButton: ActionSheet.Button = .cancel(Text("Cancel button"))
//        let defaultButton: ActionSheet.Button = .default(Text("Default button"))
//        let destructiveButton: ActionSheet.Button = .destructive(Text("Destructive button"))
        
        //return ActionSheet(title: Text("This is a title"))
        
//        return ActionSheet(
//            title: Text("Title"),
//            message: Text("This is a message you can read when ActionSheet is opened"),
//            buttons: [
//                .cancel(Text("Cancel button")),
//                .default(Text("Default button")),
//                .destructive(Text("Destructive button"))
//            ])
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            // add code here
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // add code here
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // add code here
        }
        
        let cancelButon: ActionSheet.Button = .cancel(Text("Cancel")) {
            // add code here
        }
        
        let title: Text = Text("What would you like to do?")
        let message: Text? = nil
        
        switch actionSheetOptions {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: message,
                buttons: [shareButton, deleteButton, cancelButon])
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: message,
                buttons: [shareButton, reportButton, cancelButon])
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
