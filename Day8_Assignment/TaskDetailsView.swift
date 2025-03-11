//
//  ListDetailsView.swift
//  Day8_Assignment
//
//  Created by Taibah Valley Academy on 11/09/1446 AH.
//

import SwiftUI

struct TaskDetailsView: View {
    @ObservedObject var details: Task
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            // task image
            Image(systemName: "calendar")
                        .font(.system(size: 50))
                        .foregroundColor(Color("CustomColors"))
                        .padding(.bottom)
                        .accessibilityHidden(true)
           // task title
            HStack{
                Text("title :")
                    .font(.headline)
                Text(details.title)
            }.frame(width: .infinity, alignment: .center)

            // task description
            HStack{
                Text("description :")
                    .font(.headline)
                Text(details.description)
                   
            }.frame(width: .infinity, alignment: .center)

            // task compelete state
            HStack{
                Text("is Completed ?")
                    .font(.headline)
                Text(details.isCompleted  ?  Image(systemName: "xmark") :Image(systemName: "checkmark"))
                .foregroundColor(details.isCompleted ? .red : .green)
                                   .font(.system(size: 20))
            }.frame(width: .infinity, alignment: .center)

            // Add button to edit a task
            
            NavigationLink (destination: EditTaskView(details: details)){
                Text("Edit")
            }
            .frame(width: 100)
            .padding()
            .background(Color("CustomColors")) // Custom background color for the button
            .foregroundColor(.white)
            .cornerRadius(10)
            .accessibilityLabel("edit Task Button") // Label for the edit button
            .accessibilityHint("Tap to edit the task.") // Provide hint about the button's functionality
        }
      
    }
}

#Preview {
    TaskDetailsView(details: .init(title: "test", description: "Read the assigned chapter from the novel for book club.", isCompleted: false))
}
