class Book {
  String title;
  String author;
  int publicationYear;
  int pageRead;
  static int totalBook = 0;

  Book({
    required this.title,
    required this.author,
    required this.publicationYear,
    this.pageRead = 0,
  }) {
    totalBook++;
  }

  void read(int pages) {
    pageRead = pageRead + pages;
  }

  int getPagesRead() {
    return pageRead;
  }

  int getRemainingPages(int totalPages) {
    return totalPages - pageRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }

  void displayDetails() {
    print('Title: $title');
    print('Author: $author');
    print('Publication Year: $publicationYear');
    print('Pages Read: $pageRead');
    print('Book Age: ${getBookAge()} years');
  }
}


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
