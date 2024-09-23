class Book {
  static int totalBooks = 0;  // Static property to keep track of total Book objects
  String title;
  String author;
  int publicationYear;
  int pagesRead; // Declare the field

  // Constructor
  Book(this.title, this.author, this.publicationYear) : pagesRead = 0 {
    totalBooks++;  // Increment totalBooks when a new Book object is created
  }

  // Method to read a certain number of pages
  void read(int pages) {
    pagesRead += pages;  // Add pages read to pagesRead
  }

  // Getter methods
  int getPagesRead() => pagesRead;
  String getTitle() => title;
  String getAuthor() => author;
  int getPublicationYear() => publicationYear;

  // Method to calculate the book's age
  int getBookAge() {
    int currentYear = DateTime.now().year;  // Get the current year
    return currentYear - publicationYear;  // Calculate book age
  }
}

void main() {
  // Create three Book objects
  var book1 = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925);
  var book2 = Book("1984", "George Orwell", 1949);
  var book3 = Book("To Kill a Mockingbird", "Harper Lee", 1960);

  // Simulate reading different numbers of pages
  book1.read(50);
  book2.read(100);
  book3.read(30);

  // Print details for each book
  for (var book in [book1, book2, book3]) {
    print('Title: ${book.getTitle()}');
    print('Author: ${book.getAuthor()}');
    print('Publication Year: ${book.getPublicationYear()}');
    print('Pages Read: ${book.getPagesRead()}');
    print('Book Age: ${book.getBookAge()} years\n');
  }

  // Print total number of books created
  print('Total number of Book objects created: ${Book.totalBooks}');
}
