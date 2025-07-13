enum Rating { pg, pg13, G, R }

class Movie {
  String title;
  String studio;
  Rating rating;

  Movie({required this.title, required this.studio, this.rating = Rating.pg});

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> pgMovies = [];
    for (Movie movie in movies) {
      if (movie.rating == Rating.pg) {
        pgMovies.add(movie);
      }
    }
    return pgMovies;
  }

  static bool isValidRating(String rating) {
    return Rating.values.any((r) => r.toString().split('.').last == rating);
  }

  String toFormattedString() {
    return 'Title: $title\nStudio: $studio\nRating: ${rating.toString().split('.').last}';
  }

  @override
  String toString() {
    return 'Title: $title, Studio: $studio, Rating: ${rating.toString().split('.').last}';
  }
}

void main() {
  Movie movie1 = Movie(
      title: 'Casino Royale', studio: 'Eon Productions', rating: Rating.pg13);
  Movie movie2 =
      Movie(title: 'The Lion King', studio: 'Disney', rating: Rating.pg);
  Movie movie3 = Movie(title: 'Toy Story', studio: 'Pixar', rating: Rating.G);
  Movie movie4 =
      Movie(title: 'Finding Nemo', studio: 'Pixar', rating: Rating.pg);
  Movie movie5 =
      Movie(title: 'Inception', studio: 'Warner Bros', rating: Rating.pg13);

  List<Movie> movies = [movie1, movie2, movie3, movie4, movie5];
  List<Movie> pgMovies = Movie.getPG(movies);

  print('Movies with PG rating:');
  for (Movie movie in pgMovies) {
    print(movie.toFormattedString());
    print('---');
  }
}
