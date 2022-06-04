//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 04..
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var backgroundColor: Color = Color.white
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    
    //@State var alertTitle: String = ""
    //@State var alertMessage: String = ""
    
    enum MyAlerts {
        case success, error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
                .animation(.linear, value: backgroundColor)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
                    //alertTitle = "Uploading error"
                    //alertMessage = "Can't upload error following the given code: 405"
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
                    //alertTitle = "Upload successfull"
                    //alertMessage = "Yeah, it's done. Now go."
                    showAlert.toggle()
                }

            }
            .foregroundColor(.orange)
            .alert(isPresented: $showAlert, content: getAlert)
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(
                title: Text("Upload error"),
                dismissButton: .destructive(Text("OMG"), action: {
                    backgroundColor = .red
                }))
        case .success:
            return Alert(
                title: Text("Upload successfull"),
                message: Text("Very nice!"),
                dismissButton: .default(Text("OK"),
                action: {
                    backgroundColor = .green
                }))
        default:
            return Alert(title: Text("Unkown error"))
        }
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK")))
//        return Alert(
//            title: Text("Change Color"),
//            message: Text("You can change to color Blue or Red"),
//            primaryButton: .destructive(Text("Red"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel(Text("Blue"), action: {
//                backgroundColor = .blue
//            }))
        
        //Alert(title: Text("This is an error"))
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
