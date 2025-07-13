abstract class LibraryItem {
  String title;
  int _id;

  LibraryItem(this.title, int id) : _id = id > 0 ? id : 0;

  int get id => _id;

  set id(int newId) {
    if (newId > 0) {
      _id = newId;
    } else {
      print('Error: ID cannot be negative');
    }
  }

  void displayInfo();
}

class Book extends LibraryItem {
  String author;

  Book(String title, this.author, int id) : super(title, id);

  @override
  void displayInfo() {
    print('Title:$title,Author:$author,Id:$id');
  }
}

class Magazine extends LibraryItem {
  int issueNumber;

  Magazine(String title, this.issueNumber, int id) : super(title, id);

  @override
  void displayInfo() {
    print('Title:$title,Issue Number:$issueNumber,Id:$id');
  }
}

void main() {
  List<LibraryItem> libraryItems = [
    Book('Flutter', 'menna', 521197),
    Magazine('dev', 1, 1),
    Book('dart', 'menna', 5211977),
    Magazine('opp', 2, 2),
  ];
  for (var item in libraryItems) {
    item.displayInfo();
  }
}
