//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jez Gábor on 2022. 06. 05..
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    var startingDate: Date = Calendar.current.date(
        from: DateComponents(year: 2022)
    ) ?? Date()
    var endingDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        
        return formatter
    }
    
    var body: some View {
        VStack {
            DatePicker("Select a date",
                       selection: $selectedDate,
                       in: startingDate...endingDate,
                       displayedComponents: .date
            )
            .datePickerStyle(CompactDatePickerStyle())
            
            Text(dateFormatter.string(from: selectedDate))
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
