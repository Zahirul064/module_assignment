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

