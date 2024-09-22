import 'book_class.dart';

void main() {
  Book poetryBook = Book(
    title: 'Agni Beena',
    author: 'Kazi Nazrul Islam',
    publicationYear: 1992,
    pageRead: 5,
  );
  Book codingBook = Book(
    title: 'The Object-Oriented Thought Process',
    author: 'Matt Weisfeld',
    publicationYear: 2000,
    pageRead: 2,
  );
  Book flutterBook = Book(
    title: 'Beginning Flutter',
    author: "Marco L. Napoli",
    publicationYear: 2019,
    pageRead: 10,
  );

  poetryBook.read(5);
  codingBook.read(15);
  flutterBook.read(30);

  print('Poetry Book');
  poetryBook.displayDetails();
  print('Remaining pages in "${poetryBook.title}": ${poetryBook.getRemainingPages(64)}');
  print('\nBook of OOP');
  codingBook.displayDetails();
  print('Remaining pages in "${codingBook.title}": ${codingBook.getRemainingPages(374)}');
  print('\nBook of Flutter');
  flutterBook.displayDetails();
  print('Remaining pages in "${flutterBook.title}": ${flutterBook.getRemainingPages(511)}');

  print('\n Total number of Books Created: ${Book.totalBook}');
}
