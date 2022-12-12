//
//  Model.swift
//  Books
//
//  Created by Emil Atanasov on 11/29/22.
//

import SwiftUI

/// Модел представящ книга
struct Book: Codable {
    var title: String
    var author: String
    var image: String
    var shortDesctiption: String
    var progress: Double
    var isOwned: Bool
}

class BooksModel: ObservableObject {
    @Published var books: [Book]
    
    init(books: [Book]) {
        self.books = books
    }
}

extension BooksModel {
    static var mock: BooksModel {
        let books = [
            Book(title: "Sapience", author:"Yuval Noah Harari", image: "sapience", shortDesctiption:
                    """
                100,000 years ago, at least six human species inhabited the earth. Today there is just one. Us. Homo sapiens.
                 How did our species succeed in the battle for dominance? Why did our foraging ancestors come together to create cities and kingdoms? How did we come to believe in gods, nations and human rights; to trust money, books and laws; and to be enslaved by bureaucracy, timetables and consumerism? And what will our world be like in the millennia to come?

                 In Sapiens, Dr Yuval Noah Harari spans the whole of human history, from the very first humans to walk the earth to the radical – and sometimes devastating – breakthroughs of the Cognitive, Agricultural and Scientific Revolutions. Drawing on insights from biology, anthropology, paleontology and economics, he explores how the currents of history have shaped our human societies, the animals and plants around us, and even our personalities. Have we become happier as history has unfolded? Can we ever free our behaviour from the heritage of our ancestors? And what, if anything, can we do to influence the course of the centuries to come?

                 Bold, wide-ranging and provocative, Sapiens challenges everything we thought we knew about being human: our thoughts, our actions, our power ... and our future.
                """, progress: 0, isOwned: false),
            Book(title: "The Innovator's Dilemma", author:"Clayton M. Christensen", image: "innovator", shortDesctiption:
                    """
                Named one of 100 Leadership & Success Books to Read in a Lifetime by Amazon Editors. A Wall Street Journal and Businessweek bestseller. Named by Fast Company as one of the most influential leadership books in its Leadership Hall of Fame. An innovation classic. From Steve Jobs to Jeff Bezos, Clay Christensen’s work continues to underpin today’s most innovative leaders and organizations.

                The bestselling classic on disruptive innovation, by renowned author Clayton M. Christensen. His work is cited by the world’s best-known thought leaders, from Steve Jobs to Malcolm Gladwell. In this classic bestseller—one of the most influential business books of all time—innovation expert Clayton Christensen shows how even the most outstanding companies can do everything right—yet still lose market leadership. Christensen explains why most companies miss out on new waves of innovation. No matter the industry, he says, a successful company with established products will get pushed aside unless managers know how and when to abandon traditional business practices.

                Offering both successes and failures from leading companies as a guide, The Innovator’s Dilemma gives you a set of rules for capitalizing on the phenomenon of disruptive innovation. Sharp, cogent, and provocative—and consistently noted as one of the most valuable business ideas of all time—The Innovator’s Dilemma is the book no manager, leader, or entrepreneur should be without.
                """, progress: 0, isOwned: false),
            Book(title: "Mindset", author:"Carol S. Dweck", image: "mindset", shortDesctiption:
                    """
                After decades of research, world-renowned Stanford University psychologist Carol S. Dweck, Ph.D., discovered a simple but groundbreaking idea: the power of mindset. In this brilliant book, she shows how success in school, work, sports, the arts, and almost every area of human endeavor can be dramatically influenced by how we think about our talents and abilities. People with a fixed mindset—those who believe that abilities are fixed—are less likely to flourish than those with a growth mindset—those who believe that abilities can be developed. Mindset reveals how great parents, teachers, managers, and athletes can put this idea to use to foster outstanding accomplishment.

                In this edition, Dweck offers new insights into her now famous and broadly embraced concept. She introduces a phenomenon she calls false growth mindset and guides people toward adopting a deeper, truer growth mindset. She also expands the mindset concept beyond the individual, applying it to the cultures of groups and organizations. With the right mindset, you can motivate those you lead, teach, and love—to transform their lives and your own.
                """, progress: 0, isOwned: false),
            Book(title: "\"Surely You're Joking, Mr. Feynman!\"", author:"Richard P. Feynman", image: "mrfreyman", shortDesctiption:
                    """
                One of the most famous science books of our time, the phenomenal national bestseller that "buzzes with energy, anecdote and life. It almost makes you want to become a physicist" (Science Digest).

                Richard P. Feynman, winner of the Nobel Prize in physics, thrived on outrageous adventures. In this lively work that “can shatter the stereotype of the stuffy scientist” (Detroit Free Press), Feynman recounts his experiences trading ideas on atomic physics with Einstein and cracking the uncrackable safes guarding the most deeply held nuclear secrets―and much more of an eyebrow-raising nature. In his stories, Feynman’s life shines through in all its eccentric glory―a combustible mixture of high intelligence, unlimited curiosity, and raging chutzpah.
                """, progress: 0, isOwned: false),
            Book(title: "Tools of Titans", author:"Yuval Noah Harari", image: "tools", shortDesctiption:
                    """
                The latest groundbreaking tome from Tim Ferriss, the #1 New York Times best-selling author of The 4-Hour Workweek.
                “For the last two years, I’ve interviewed more than 200 world-class performers for my podcast, The Tim Ferriss Show. The guests range from super celebs (Jamie Foxx, Arnold Schwarzenegger, etc.) and athletes (icons of powerlifting, gymnastics, surfing, etc.) to legendary Special Operations commanders and black-market biochemists. For most of my guests, it’s the first time they’ve agreed to a two-to-three-hour interview. This unusual depth has helped make The Tim Ferriss Show the first business/interview podcast to pass 100 million downloads.
                “This book contains the distilled tools, tactics, and ‘inside baseball’ you won’t find anywhere else. It also includes new tips from past guests, and life lessons from new ‘guests’ you haven’t met.
                “What makes the show different is a relentless focus on actionable details. This is reflected in the questions. For example: What do these people do in the first sixty minutes of each morning? What do their workout routines look like, and why? What books have they gifted most to other people? What are the biggest wastes of time for novices in their field? What supplements do they take on a daily basis?
                “I don’t view myself as an interviewer. I view myself as an experimenter. If I can’t test something and replicate results in the messy reality of everyday life, I’m not interested.
                “Everything within these pages has been vetted, explored, and applied to my own life in some fashion. I’ve used dozens of the tactics and philosophies in high-stakes negotiations, high-risk environments, or large business dealings. The lessons have made me millions of dollars and saved me years of wasted effort and frustration.
                “I created this book, my ultimate notebook of high-leverage tools, for myself. It’s changed my life, and I hope the same for you.”
                """, progress: 0, isOwned: false),
            Book(title: "The Power of Habit", author:"Charles Duhigg", image: "habit", shortDesctiption:
                    """
                Charles Duhigg, an award-winning business reporter, brings us to the cutting edge of scientific discoveries that explain why habits exist and how they may be modified in The Power of Habit. Duhigg delivers a whole new perspective of human nature and its possibilities by distilling massive amounts of information into compelling narratives that take us from the boardrooms of Procter & Gamble to the sidelines of the NFL to the front lines of the civil rights struggle. The Power of Habit is built on an energizing argument: understanding how habits work is the key to exercising regularly, losing weight, becoming more productive, and attaining success. As Duhigg demonstrates, we can improve our businesses, communities, and lives by embracing this new science.
                """, progress: 0, isOwned: false),
            Book(title: "The Design of Everyday Things", author:"Don Norman", image: "things", shortDesctiption:
                    """
                The ultimate guide to human-centered design.

                Even the smartest among us can feel inept as we fail to figure out which light switch or oven burner to turn on, or whether to push, pull, or slide a door.

                The fault, argues this ingenious -- even liberating -- book, lies not in ourselves, but in product design that ignores the needs of users and the principles of cognitive psychology. The problems range from ambiguous and hidden controls to arbitrary relationships between controls and functions, coupled with a lack of feedback or other assistance and unreasonable demands on memorization.

                The Design of Everyday Things shows that good, usable design is possible. The rules are simple: make things visible, exploit natural relationships that couple function and control, and make intelligent use of constraints. The goal: guide the user effortlessly to the right action on the right control at the right time.

                The Design of Everyday Things is a powerful primer on how -- and why -- some products satisfy customers while others only frustrate them.
                """, progress: 0, isOwned: false)
        ]
        
        let encoder = JSONEncoder()
        if let data = try? encoder.encode(books) {
            let str = String(data: data, encoding: .utf8)
            print(str)
        } else {
            print("no data")
        }
        
        return BooksModel(books: books)
    }
}
