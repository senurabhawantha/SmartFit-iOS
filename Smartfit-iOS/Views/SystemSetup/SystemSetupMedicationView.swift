//
//  SystemSetupMedicationView.swift
//  Smartfit-iOS
//
//  Created by ITEDP on 2025-04-24.
//
import SwiftUI

struct SystemSetupMedicationView: View {
    @State private var selectedMeds: [String] = []
    @State private var searchText: String = ""
    
    let medications = ["Abilify", "Abilify Maintena", "Abiraterone", "Acetaminophen", "Actemra", "Axpelliaramus", "Aspirin", "Ibuprofen"]

    var filteredMeds: [String] {
        if searchText.isEmpty {
            return medications
        } else {
            return medications.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }

    var body: some View {
        VStack(spacing: 20) {
            // Top bar
            HStack {
                Image(systemName: "chevron.left")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            .padding(.top, 40)

            // Title
            Text("What medications do you take?")
                .font(.title2.bold())
                .foregroundColor(.pink)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)

            // Search field
            TextField("Search...", text: $searchText)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal)

            // Scrollable list
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(filteredMeds, id: \.self) { med in
                        Button(action: {
                            if selectedMeds.contains(med) {
                                selectedMeds.removeAll { $0 == med }
                            } else {
                                selectedMeds.append(med)
                            }
                        }) {
                            HStack {
                                Text(med)
                                Spacer()
                                if selectedMeds.contains(med) {
                                    Image(systemName: "checkmark.square.fill")
                                        .foregroundColor(.white)
                                } else {
                                    Image(systemName: "square")
                                }
                            }
                            .padding()
                            .background(selectedMeds.contains(med) ? Color.pink : Color.white)
                            .foregroundColor(selectedMeds.contains(med) ? .white : .black)
                            .cornerRadius(10)
                            .shadow(radius: 2)
                        }
                        .padding(.horizontal)
                    }
                }
            }

            // Selected Pills
            if !selectedMeds.isEmpty {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(selectedMeds, id: \.self) { med in
                            Text(med)
                                .padding(.horizontal, 10)
                                .padding(.vertical, 5)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                }
            }

            // Continue Button
            NavigationLink(destination: SystemSetupSymptomsView()) {
                Text("Continue")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.pink)
                    .cornerRadius(15)
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 20)
        }
    }
}
#Preview {
    SystemSetupMedicationView()
}
