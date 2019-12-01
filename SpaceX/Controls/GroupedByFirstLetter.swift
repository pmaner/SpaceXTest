//
//  GroupedByFirstLetter.swift
//  SpaceX
//
//  Created by Paul Manser on 1/12/19.
//  Copyright © 2019 Paul Manser. All rights reserved.
//

import SwiftUI

struct GroupedByFirstLetter: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct GroupedByFirstLetter_Previews: PreviewProvider {
    static var previews: some View {
        GroupedByFirstLetter()
    }
}


//func groupedEpisodesByMonth(_ episodes: [Episode]) -> [Date: [Episode]] {
//  let empty: [Date: [Episode]] = [:]
//  return episodes.reduce(into: empty) { acc, cur in
//      let components = Calendar.current.dateComponents([.year, .month], from: cur.airDate)
//      let date = Calendar.current.date(from: components)!
//      let existing = acc[date] ?? []
//      acc[date] = existing + [cur]
//  }
//}

// Group by first letter
//let sortedContacts = contactData.sorted(by: { $0.name < $1.name }) // sort the Array first.
//print(sortedContacts)
//
//let groupedContacts = sortedContacts.reduce([[Contact]]()) {
//    guard var last = $0.last else { return [[$1]] }
//    var collection = $0
//    if last.first!.name.characters.first == $1.name.characters.first {
//        last += [$1]
//        collection[collection.count - 1] = last
//    } else {
//        collection += [[$1]]
//    }
//    return collection
//}
//print(groupedContacts)


// Filter example
//import SwiftUI
//
//class UserData: ObservableObject {
//    @Published var showWantsOnly = false
//    @Published var bookList: [Book] = []
//
//    init() {
//        for _ in 0..<3001 {
//            bookList.append(Book())
//        }
//    }
//}
//
//struct SwiftUIView: View {
//    @EnvironmentObject var userData: UserData
//    @State private var show = false
//
//    var body: some View {
//        NavigationView {
//
//            VStack {
//                Toggle(isOn: $userData.showWantsOnly) {
//                    Text("Show wants")
//                }
//
//                if userData.showWantsOnly {
//                    Filtered()
//                } else {
//                    NotFiltered()
//                }
//            }
//
//        }.navigationBarTitle(Text("Books"))
//    }
//}
//
//struct Filtered: View {
//    @EnvironmentObject var userData: UserData
//
//    var body: some View {
//        List(userData.bookList.filter { $0.own }) { book in
//            NavigationLink(destination: BookDetail(book: book)) {
//                BookRow(book: book)
//            }
//        }
//    }
//}
//
//struct NotFiltered: View {
//    @EnvironmentObject var userData: UserData
//
//    var body: some View {
//        List(userData.bookList) { book in
//            NavigationLink(destination: BookDetail(book: book)) {
//                BookRow(book: book)
//            }
//        }
//    }
//}
//
//struct Book: Identifiable {
//    let id = UUID()
//    let own = Bool.random()
//}
//
//struct BookRow: View {
//    let book: Book
//
//    var body: some View {
//        Text("\(String(book.own)) \(book.id)")
//    }
//}
//
//struct BookDetail: View {
//    let book: Book
//
//    var body: some View {
//        Text("Detail for \(book.id)")
//    }
//}
